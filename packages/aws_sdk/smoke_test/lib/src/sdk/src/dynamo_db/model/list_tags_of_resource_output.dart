// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.list_tags_of_resource_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart' as _i2;

part 'list_tags_of_resource_output.g.dart';

abstract class ListTagsOfResourceOutput
    with _i1.AWSEquatable<ListTagsOfResourceOutput>
    implements
        Built<ListTagsOfResourceOutput, ListTagsOfResourceOutputBuilder> {
  factory ListTagsOfResourceOutput({
    List<_i2.Tag>? tags,
    String? nextToken,
  }) {
    return _$ListTagsOfResourceOutput._(
      tags: tags == null ? null : _i3.BuiltList(tags),
      nextToken: nextToken,
    );
  }

  factory ListTagsOfResourceOutput.build(
          [void Function(ListTagsOfResourceOutputBuilder) updates]) =
      _$ListTagsOfResourceOutput;

  const ListTagsOfResourceOutput._();

  /// Constructs a [ListTagsOfResourceOutput] from a [payload] and [response].
  factory ListTagsOfResourceOutput.fromResponse(
    ListTagsOfResourceOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListTagsOfResourceOutput>>
      serializers = [ListTagsOfResourceOutputAwsJson10Serializer()];

  /// The tags currently associated with the Amazon DynamoDB resource.
  _i3.BuiltList<_i2.Tag>? get tags;

  /// If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.
  String? get nextToken;
  @override
  List<Object?> get props => [
        tags,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsOfResourceOutput')
      ..add(
        'tags',
        tags,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListTagsOfResourceOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListTagsOfResourceOutput> {
  const ListTagsOfResourceOutputAwsJson10Serializer()
      : super('ListTagsOfResourceOutput');

  @override
  Iterable<Type> get types => const [
        ListTagsOfResourceOutput,
        _$ListTagsOfResourceOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTagsOfResourceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsOfResourceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListTagsOfResourceOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListTagsOfResourceOutput(:tags, :nextToken) = object;
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
