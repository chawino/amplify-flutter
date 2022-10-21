// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;

/// {@template amplify_storage_s3_dart.download_task}
/// A task created to fulfill a download operation.
/// {@template}
@internal
class S3DownloadTask {
  /// {@macro amplify_storage_s3_dart.download_task}
  ///
  /// {@template amplify_storage_s3_dart.download_task.pre_start}
  /// [preStart] is a function to run before starting the download task,
  /// can be used as a precondition check. This function can throw exception
  /// to terminate the download task, the exception will be forwarded to the
  /// [result] Future.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_progress}
  /// [onProgress] is a function to receive [S3TransferProgress].
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_receiving_bytes}
  /// [onData] is a function to receive bytes from download response
  /// body stream.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_done}
  /// [onDone] is a function to run when the download response body stream is
  /// completed. This function can throw exception, which will be forwarded
  /// to the [result] future.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_error}
  /// [onError] is a function to run when an error occurred during download.
  /// This function doesn't handle the actual error, but only serves as a job
  /// cleaner.
  /// {@endtemplate}
  S3DownloadTask({
    required s3.S3Client s3Client,
    required S3StoragePrefixResolver prefixResolver,
    required String bucket,
    required String key,
    required S3StorageDownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
    required AWSLogger logger,
  })  : _downloadCompleter = Completer<S3StorageItem>(),
        _s3Client = s3Client,
        _prefixResolver = prefixResolver,
        _bucket = bucket,
        _key = key,
        _downloadDataOptions = options,
        _preStart = preStart,
        _onProgress = onProgress,
        _onData = onData,
        _onDone = onDone,
        _onError = onError,
        _logger = logger,
        _downloadedBytesSize = 0;

  // the Completer to complete the final `result` Future.
  final Completer<S3StorageItem> _downloadCompleter;

  final s3.S3Client _s3Client;
  final S3StoragePrefixResolver _prefixResolver;
  final String _bucket;
  final String _key;
  final S3StorageDownloadDataOptions _downloadDataOptions;
  final FutureOr<void> Function()? _preStart;
  final void Function(S3TransferProgress)? _onProgress;
  final void Function(List<int> bytes)? _onData;
  final FutureOr<void> Function()? _onDone;
  final FutureOr<void> Function()? _onError;
  final AWSLogger _logger;

  int _downloadedBytesSize;

  // the subscription to `S3Client.getObject` returned stream body.
  // It gets reassigned when pause/resume.
  late StreamSubscription<List<int>> _bytesSubscription;

  // The completer to ensure `pause`, `resume` and `cancel` to be executed
  // at correct moment.
  Completer<void>? _getObjectCompleter;
  Completer<void>? _pauseCompleter;

  late S3TransferState _state;
  late final String _resolvedKey;

  // Total bytes that need to be downloaded, this field is set when the
  // **very first** (without bytes range specified) `S3Client.getObject`
  // response returns, value is from the response header.
  late final int _totalBytes;

  Future<void>? get _getObjectInitiated => _getObjectCompleter?.future;
  Future<void>? get _pausedCompleted => _pauseCompleter?.future;

  /// The result of a download task.
  Future<S3StorageItem> get result => _downloadCompleter.future;

  /// Starts the `S3DownloadTask`.
  @internal
  Future<void> start() async {
    _resetGetObjectCompleter();

    _state = S3TransferState.inProgress;

    try {
      await _preStart?.call();
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
      return;
    }

    final resolvedPrefix = await StorageS3Service.getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      storageAccessLevel: _downloadDataOptions.storageAccessLevel,
      identityId: _downloadDataOptions.targetIdentityId,
    );

    _resolvedKey = '$resolvedPrefix$_key';

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedKey,
        bytesRange: _downloadDataOptions.bytesRange,
      );

      final remoteSize = getObjectOutput.contentLength?.toInt();
      if (remoteSize == null) {
        await _completeDownloadWithError(
          S3StorageException.unexpectedContentLengthFromService(),
        );
        return;
      }

      _totalBytes = remoteSize;
      _listenToBytesSteam(getObjectOutput.body);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Pauses the [S3DownloadTask].
  Future<void> pause() async {
    // ensure the task has actually started before pausing
    await _getObjectInitiated;

    if (_state == S3TransferState.paused ||
        _state == S3TransferState.canceled) {
      return;
    }

    _resetPauseCompleter();

    // TODO(HuiSF): when it's ready, invoke `AWSHttpOperation.cancel` here
    //  to cancel the underlying http request
    await _bytesSubscription.cancel();
    _state = S3TransferState.paused;
    _onProgress?.call(
      S3TransferProgress(
        totalBytes: _totalBytes,
        transferredBytes: _downloadedBytesSize,
        state: _state,
      ),
    );
    _pauseCompleter?.complete();
  }

  /// Resumes the [S3DownloadTask] from paused state.
  Future<void> resume() async {
    // ensure the task has actually been paused before resuming and all
    // stream listers were canceled.
    await _pausedCompleted;

    if (_state == S3TransferState.inProgress) {
      return;
    }

    if (_state == S3TransferState.canceled) {
      // throws exception here as _downloadCompleter has completed by the
      // cancel
      throw S3StorageException.resumeCanceledOperation();
    }

    _resetGetObjectCompleter();

    _state = S3TransferState.inProgress;

    _onProgress?.call(
      S3TransferProgress(
        totalBytes: _totalBytes,
        transferredBytes: _downloadedBytesSize,
        state: _state,
      ),
    );

    final bytesRangeToDownload = S3DataBytesRange(
      start: _downloadedBytesSize,
      end: _totalBytes,
    );

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedKey,
        bytesRange: bytesRangeToDownload,
      );
      _listenToBytesSteam(getObjectOutput.body);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Cancels the [S3DownloadTask], and throws a [S3StorageException] to
  /// terminate.
  ///
  /// A canceled [S3DownloadTask] is not resumable.
  Future<void> cancel() async {
    if (_state == S3TransferState.canceled) {
      return;
    }

    _state = S3TransferState.canceled;

    // TODO(HuiSF): when it's ready, invoke `AWSHttpOperation.cancel` here
    //  to cancel the underlying http request
    await _bytesSubscription.cancel();
    _onProgress?.call(
      S3TransferProgress(
        totalBytes: _totalBytes,
        transferredBytes: _downloadedBytesSize,
        state: _state,
      ),
    );

    await _completeDownloadWithError(
      S3StorageException.controllableOperationCanceled(),
    );
  }

  void _resetGetObjectCompleter() {
    _getObjectCompleter = Completer();
  }

  void _resetPauseCompleter() {
    _pauseCompleter = Completer();
  }

  void _listenToBytesSteam(Stream<List<int>>? bytesStream) {
    if (bytesStream == null) {
      _completeDownloadWithError(S3StorageException.unexpectedGetObjectBody());
      return;
    }

    _bytesSubscription = bytesStream.listen((bytes) {
      _downloadedBytesSize += bytes.length;
      _onData?.call(bytes);
      _onProgress?.call(
        S3TransferProgress(
          transferredBytes: _downloadedBytesSize,
          totalBytes: _totalBytes,
          state: _state,
        ),
      );
    })
      ..onDone(() async {
        if (_downloadedBytesSize == _totalBytes) {
          try {
            await _onDone?.call();
            _downloadCompleter.complete(
              _downloadDataOptions.getProperties
                  ? S3StorageItem.fromHeadObjectOutput(
                      await StorageS3Service.headObject(
                        s3client: _s3Client,
                        bucket: _bucket,
                        key: _resolvedKey,
                      ),
                      key: _key,
                    )
                  : S3StorageItem(key: _key),
            );
          } on Exception catch (error) {
            _downloadCompleter.completeError(error);
          }
        } else {
          await _completeDownloadWithError(
            S3StorageException.incompleteDownload(),
          );
        }
      })
      ..onError(_completeDownloadWithError);

    // After setting up the body stream listener, we consider the task is fully
    // started, and can be paused etc.
    _getObjectCompleter?.complete();
  }

  Future<void> _completeDownloadWithError(
    Object error, [
    StackTrace? stackTrace,
  ]) async {
    await _onError?.call();
    _downloadCompleter.completeError(error, stackTrace);
  }

  Future<s3.GetObjectOutput> _getObject({
    required String bucket,
    required String key,
    required S3DataBytesRange? bytesRange,
  }) async {
    final request = s3.GetObjectRequest.build((builder) {
      builder
        ..bucket = bucket
        ..key = key
        ..range = bytesRange?.headerString
        ..checksumMode = s3.ChecksumMode.enabled;
    });

    try {
      return await _s3Client.getObject(request);
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.getObject may return 403 error
      throw S3StorageException.fromUnknownSmithyHttpException(error);
    } on s3.NoSuchKey catch (error) {
      // 404 error is wrapped by s3.NoSuchKey for getObject :/
      throw S3StorageException.objectNotFoundByKey(error);
    }
  }
}