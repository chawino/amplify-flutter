// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_instance_profile_tags_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'list_instance_profile_tags_response.g.dart';

abstract class ListInstanceProfileTagsResponse
    with
        _i1.AWSEquatable<ListInstanceProfileTagsResponse>
    implements
        Built<ListInstanceProfileTagsResponse,
            ListInstanceProfileTagsResponseBuilder> {
  factory ListInstanceProfileTagsResponse({
    required List<_i2.Tag> tags,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListInstanceProfileTagsResponse._(
      tags: _i3.BuiltList(tags),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  factory ListInstanceProfileTagsResponse.build(
          [void Function(ListInstanceProfileTagsResponseBuilder) updates]) =
      _$ListInstanceProfileTagsResponse;

  const ListInstanceProfileTagsResponse._();

  /// Constructs a [ListInstanceProfileTagsResponse] from a [payload] and [response].
  factory ListInstanceProfileTagsResponse.fromResponse(
    ListInstanceProfileTagsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListInstanceProfileTagsResponse>>
      serializers = [ListInstanceProfileTagsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListInstanceProfileTagsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The list of tags that are currently attached to the IAM instance profile. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
  _i3.BuiltList<_i2.Tag> get tags;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        tags,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListInstanceProfileTagsResponse')
          ..add(
            'tags',
            tags,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'marker',
            marker,
          );
    return helper.toString();
  }
}

class ListInstanceProfileTagsResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListInstanceProfileTagsResponse> {
  const ListInstanceProfileTagsResponseAwsQuerySerializer()
      : super('ListInstanceProfileTagsResponse');

  @override
  Iterable<Type> get types => const [
        ListInstanceProfileTagsResponse,
        _$ListInstanceProfileTagsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListInstanceProfileTagsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListInstanceProfileTagsResponseBuilder();
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
          result.tags.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
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
    ListInstanceProfileTagsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListInstanceProfileTagsResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListInstanceProfileTagsResponse(:tags, :isTruncated, :marker) =
        object;
    result$
      ..add(const _i4.XmlElementName('Tags'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    result$
      ..add(const _i4.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
