// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_location_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart'
    as _i3;

part 'get_bucket_location_output.g.dart';

abstract class GetBucketLocationOutput
    with _i1.AWSEquatable<GetBucketLocationOutput>
    implements
        Built<GetBucketLocationOutput, GetBucketLocationOutputBuilder>,
        _i2.HasPayload<_i3.BucketLocationConstraint> {
  factory GetBucketLocationOutput(
      {_i3.BucketLocationConstraint? locationConstraint}) {
    return _$GetBucketLocationOutput._(locationConstraint: locationConstraint);
  }

  factory GetBucketLocationOutput.build(
          [void Function(GetBucketLocationOutputBuilder) updates]) =
      _$GetBucketLocationOutput;

  const GetBucketLocationOutput._();

  /// Constructs a [GetBucketLocationOutput] from a [payload] and [response].
  factory GetBucketLocationOutput.fromResponse(
    _i3.BucketLocationConstraint? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketLocationOutput.build((b) {
        b.locationConstraint = payload;
      });

  static const List<_i2.SmithySerializer<_i3.BucketLocationConstraint?>>
      serializers = [GetBucketLocationOutputRestXmlSerializer()];

  /// Specifies the Region where the bucket resides. For a list of all the Amazon S3 supported location constraints by Region, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region). Buckets in Region `us-east-1` have a LocationConstraint of `null`.
  _i3.BucketLocationConstraint? get locationConstraint;
  @override
  _i3.BucketLocationConstraint? getPayload() => locationConstraint;
  @override
  List<Object?> get props => [locationConstraint];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLocationOutput')
      ..add(
        'locationConstraint',
        locationConstraint,
      );
    return helper.toString();
  }
}

class GetBucketLocationOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<_i3.BucketLocationConstraint> {
  const GetBucketLocationOutputRestXmlSerializer()
      : super('GetBucketLocationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketLocationOutput,
        _$GetBucketLocationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.BucketLocationConstraint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.BucketLocationConstraint),
    ) as _i3.BucketLocationConstraint);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i3.BucketLocationConstraint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LocationConstraint',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    result$.add(serializers.serialize(
      object,
      specifiedType: const FullType(_i3.BucketLocationConstraint),
    ));
    return result$;
  }
}
