// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_lifecycle_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_lifecycle_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/checksum_algorithm.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart' as _i5;

part 'put_bucket_lifecycle_configuration_request.g.dart';

abstract class PutBucketLifecycleConfigurationRequest
    with
        _i1.HttpInput<_i2.BucketLifecycleConfiguration>,
        _i3.AWSEquatable<PutBucketLifecycleConfigurationRequest>
    implements
        Built<PutBucketLifecycleConfigurationRequest,
            PutBucketLifecycleConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.BucketLifecycleConfiguration> {
  factory PutBucketLifecycleConfigurationRequest({
    required String bucket,
    _i4.ChecksumAlgorithm? checksumAlgorithm,
    _i2.BucketLifecycleConfiguration? lifecycleConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketLifecycleConfigurationRequest._(
      bucket: bucket,
      checksumAlgorithm: checksumAlgorithm,
      lifecycleConfiguration: lifecycleConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketLifecycleConfigurationRequest.build(
      [void Function(PutBucketLifecycleConfigurationRequestBuilder)
          updates]) = _$PutBucketLifecycleConfigurationRequest;

  const PutBucketLifecycleConfigurationRequest._();

  factory PutBucketLifecycleConfigurationRequest.fromRequest(
    _i2.BucketLifecycleConfiguration? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketLifecycleConfigurationRequest.build((b) {
        if (payload != null) {
          b.lifecycleConfiguration.replace(payload);
        }
        if (request.headers['x-amz-sdk-checksum-algorithm'] != null) {
          b.checksumAlgorithm = _i4.ChecksumAlgorithm.values
              .byValue(request.headers['x-amz-sdk-checksum-algorithm']!);
        }
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.BucketLifecycleConfiguration?>>
      serializers = [PutBucketLifecycleConfigurationRequestRestXmlSerializer()];

  /// The name of the bucket for which to set the configuration.
  String get bucket;

  /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding `x-amz-checksum` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the _Amazon S3 User Guide_.
  ///
  /// If you provide an individual checksum, Amazon S3 ignores any provided `ChecksumAlgorithm` parameter.
  _i4.ChecksumAlgorithm? get checksumAlgorithm;

  /// Container for lifecycle rules. You can add as many as 1,000 rules.
  _i2.BucketLifecycleConfiguration? get lifecycleConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.BucketLifecycleConfiguration? getPayload() => lifecycleConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        lifecycleConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketLifecycleConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'checksumAlgorithm',
            checksumAlgorithm,
          )
          ..add(
            'lifecycleConfiguration',
            lifecycleConfiguration,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

class PutBucketLifecycleConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.BucketLifecycleConfiguration> {
  const PutBucketLifecycleConfigurationRequestRestXmlSerializer()
      : super('PutBucketLifecycleConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketLifecycleConfigurationRequest,
        _$PutBucketLifecycleConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.BucketLifecycleConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.BucketLifecycleConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.LifecycleRule),
          ) as _i5.LifecycleRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.BucketLifecycleConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'LifecycleConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.BucketLifecycleConfiguration(:rules) = object;
    result$
        .addAll(const _i1.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType.nullable(
        _i6.BuiltList,
        [FullType(_i5.LifecycleRule)],
      ),
    ));
    return result$;
  }
}
