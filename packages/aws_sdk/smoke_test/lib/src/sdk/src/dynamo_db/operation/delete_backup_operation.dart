// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.delete_backup_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_in_use_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_backup_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i13;

/// Deletes an existing backup of a table.
///
/// You can call `DeleteBackup` at a maximum rate of 10 times per second.
class DeleteBackupOperation extends _i1.HttpOperation<_i2.DeleteBackupInput,
    _i2.DeleteBackupInput, _i3.DeleteBackupOutput, _i3.DeleteBackupOutput> {
  /// Deletes an existing backup of a table.
  ///
  /// You can call `DeleteBackup` at a maximum rate of 10 times per second.
  DeleteBackupOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.DeleteBackupInput, _i2.DeleteBackupInput,
          _i3.DeleteBackupOutput, _i3.DeleteBackupOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.DeleteBackup',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDb,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DeleteBackupInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DeleteBackupOutput? output]) => 200;
  @override
  _i3.DeleteBackupOutput buildOutput(
    _i3.DeleteBackupOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DeleteBackupOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.BackupInUseException, _i9.BackupInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'BackupInUseException',
          ),
          _i1.ErrorKind.client,
          _i9.BackupInUseException,
          builder: _i9.BackupInUseException.fromResponse,
        ),
        _i1.SmithyError<_i10.BackupNotFoundException,
            _i10.BackupNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'BackupNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.BackupNotFoundException,
          builder: _i10.BackupNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i11.InternalServerError, _i11.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i11.InternalServerError,
          builder: _i11.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidEndpointException,
            _i12.InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidEndpointException,
          statusCode: 421,
          builder: _i12.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError<_i13.LimitExceededException,
            _i13.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.LimitExceededException,
          builder: _i13.LimitExceededException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeleteBackup';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DeleteBackupOutput> run(
    _i2.DeleteBackupInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
