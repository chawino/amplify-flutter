// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_attached_group_policies_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i2;

part 'list_attached_group_policies_response.g.dart';

/// Contains the response to a successful ListAttachedGroupPolicies request.
abstract class ListAttachedGroupPoliciesResponse
    with
        _i1.AWSEquatable<ListAttachedGroupPoliciesResponse>
    implements
        Built<ListAttachedGroupPoliciesResponse,
            ListAttachedGroupPoliciesResponseBuilder> {
  /// Contains the response to a successful ListAttachedGroupPolicies request.
  factory ListAttachedGroupPoliciesResponse({
    List<_i2.AttachedPolicy>? attachedPolicies,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListAttachedGroupPoliciesResponse._(
      attachedPolicies:
          attachedPolicies == null ? null : _i3.BuiltList(attachedPolicies),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListAttachedGroupPolicies request.
  factory ListAttachedGroupPoliciesResponse.build(
          [void Function(ListAttachedGroupPoliciesResponseBuilder) updates]) =
      _$ListAttachedGroupPoliciesResponse;

  const ListAttachedGroupPoliciesResponse._();

  /// Constructs a [ListAttachedGroupPoliciesResponse] from a [payload] and [response].
  factory ListAttachedGroupPoliciesResponse.fromResponse(
    ListAttachedGroupPoliciesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListAttachedGroupPoliciesResponse>>
      serializers = [ListAttachedGroupPoliciesResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAttachedGroupPoliciesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of the attached policies.
  _i3.BuiltList<_i2.AttachedPolicy>? get attachedPolicies;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        attachedPolicies,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListAttachedGroupPoliciesResponse')
          ..add(
            'attachedPolicies',
            attachedPolicies,
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

class ListAttachedGroupPoliciesResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListAttachedGroupPoliciesResponse> {
  const ListAttachedGroupPoliciesResponseAwsQuerySerializer()
      : super('ListAttachedGroupPoliciesResponse');

  @override
  Iterable<Type> get types => const [
        ListAttachedGroupPoliciesResponse,
        _$ListAttachedGroupPoliciesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListAttachedGroupPoliciesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAttachedGroupPoliciesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AttachedPolicies':
          result.attachedPolicies.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AttachedPolicy)],
            ),
          ) as _i3.BuiltList<_i2.AttachedPolicy>));
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
    ListAttachedGroupPoliciesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListAttachedGroupPoliciesResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListAttachedGroupPoliciesResponse(
      :attachedPolicies,
      :isTruncated,
      :marker
    ) = object;
    if (attachedPolicies != null) {
      result$
        ..add(const _i4.XmlElementName('AttachedPolicies'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          attachedPolicies,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AttachedPolicy)],
          ),
        ));
    }
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
