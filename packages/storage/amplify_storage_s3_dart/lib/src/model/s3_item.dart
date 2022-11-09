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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:meta/meta.dart';

/// {@template storage.amplify_storage_s3.storage_s3_item}
/// An object in a S3 bucket.
/// {@endtemplate}
class S3Item extends StorageItem {
  /// {@macro storage.amplify_storage_s3.storage_s3_item}
  const S3Item({
    required super.key,
    super.size,
    super.lastModified,
    super.eTag,
    this.metadata = const <String, String>{},
    this.versionId,
  });

  /// Creates a [S3Item] from [s3.S3Object] provided by S3 Client.
  ///
  /// This named constructor should be used internally only.
  @internal
  factory S3Item.fromS3Object(
    s3.S3Object object, {
    required String prefixToDrop,
  }) {
    final key = object.key;

    // In S3 plugin, key is required property presenting an object
    if (key == null) {
      throw S3Exception.unknownException();
    }

    final keyDroppedPrefix = dropPrefixFromKey(
      prefixToDrop: prefixToDrop,
      key: key,
    );

    return S3Item(
      key: keyDroppedPrefix,
      size: object.size?.toInt(),
      lastModified: object.lastModified,
      eTag: object.eTag,
    );
  }

  /// Creates a [S3Item] from [s3.HeadObjectOutput] provided by S3
  /// Client.
  ///
  /// This named constructor should be used internally only.
  @internal
  factory S3Item.fromHeadObjectOutput(
    s3.HeadObjectOutput headObjectOutput, {
    required String key,
  }) {
    return S3Item(
      key: key,
      lastModified: headObjectOutput.lastModified,
      eTag: headObjectOutput.eTag,
      metadata: headObjectOutput.metadata?.toMap() ?? const {},
      versionId: headObjectOutput.versionId,
      size: headObjectOutput.contentLength?.toInt(),
    );
  }

  /// Removes `prefixToDrop` from `key` string.
  ///
  /// This should only be used internally.
  @internal
  static String dropPrefixFromKey({
    required String prefixToDrop,
    required String key,
  }) {
    return key.replaceRange(0, prefixToDrop.length, '');
  }

  /// Metadata specified when the object was uploaded.
  final Map<String, String> metadata;

  /// Object `versionId`, may be available when S3 bucket versioning is enabled.
  final String? versionId;
}