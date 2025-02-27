// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.tag_resource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart' as _i3;

part 'tag_resource_input.g.dart';

abstract class TagResourceInput
    with _i1.HttpInput<TagResourceInput>, _i2.AWSEquatable<TagResourceInput>
    implements Built<TagResourceInput, TagResourceInputBuilder> {
  factory TagResourceInput({
    required String resourceArn,
    required List<_i3.Tag> tags,
  }) {
    return _$TagResourceInput._(
      resourceArn: resourceArn,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagResourceInput.build(
      [void Function(TagResourceInputBuilder) updates]) = _$TagResourceInput;

  const TagResourceInput._();

  factory TagResourceInput.fromRequest(
    TagResourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TagResourceInput>> serializers = [
    TagResourceInputAwsJson10Serializer()
  ];

  /// Identifies the Amazon DynamoDB resource to which tags should be added. This value is an Amazon Resource Name (ARN).
  String get resourceArn;

  /// The tags to be assigned to the Amazon DynamoDB resource.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagResourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        resourceArn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagResourceInput')
      ..add(
        'resourceArn',
        resourceArn,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagResourceInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<TagResourceInput> {
  const TagResourceInputAwsJson10Serializer() : super('TagResourceInput');

  @override
  Iterable<Type> get types => const [
        TagResourceInput,
        _$TagResourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TagResourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagResourceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TagResourceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TagResourceInput(:resourceArn, :tags) = object;
    result$.addAll([
      'ResourceArn',
      serializers.serialize(
        resourceArn,
        specifiedType: const FullType(String),
      ),
      'Tags',
      serializers.serialize(
        tags,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ),
    ]);
    return result$;
  }
}
