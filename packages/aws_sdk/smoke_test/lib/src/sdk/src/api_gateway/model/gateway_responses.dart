// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.gateway_responses; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response.dart'
    as _i2;

part 'gateway_responses.g.dart';

/// The collection of the GatewayResponse instances of a RestApi as a `responseType`-to-GatewayResponse object map of key-value pairs. As such, pagination is not supported for querying this collection.
abstract class GatewayResponses
    with _i1.AWSEquatable<GatewayResponses>
    implements Built<GatewayResponses, GatewayResponsesBuilder> {
  /// The collection of the GatewayResponse instances of a RestApi as a `responseType`-to-GatewayResponse object map of key-value pairs. As such, pagination is not supported for querying this collection.
  factory GatewayResponses({
    List<_i2.GatewayResponse>? items,
    String? position,
  }) {
    return _$GatewayResponses._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// The collection of the GatewayResponse instances of a RestApi as a `responseType`-to-GatewayResponse object map of key-value pairs. As such, pagination is not supported for querying this collection.
  factory GatewayResponses.build(
      [void Function(GatewayResponsesBuilder) updates]) = _$GatewayResponses;

  const GatewayResponses._();

  /// Constructs a [GatewayResponses] from a [payload] and [response].
  factory GatewayResponses.fromResponse(
    GatewayResponses payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<GatewayResponses>> serializers = [
    GatewayResponsesRestJson1Serializer()
  ];

  /// Returns the entire collection, because of no pagination support.
  _i3.BuiltList<_i2.GatewayResponse>? get items;

  /// The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GatewayResponses')
      ..add(
        'items',
        items,
      )
      ..add(
        'position',
        position,
      );
    return helper.toString();
  }
}

class GatewayResponsesRestJson1Serializer
    extends _i4.StructuredSmithySerializer<GatewayResponses> {
  const GatewayResponsesRestJson1Serializer() : super('GatewayResponses');

  @override
  Iterable<Type> get types => const [
        GatewayResponses,
        _$GatewayResponses,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GatewayResponses deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayResponsesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'item':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.GatewayResponse)],
            ),
          ) as _i3.BuiltList<_i2.GatewayResponse>));
        case 'position':
          result.position = (serializers.deserialize(
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
    GatewayResponses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GatewayResponses(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.GatewayResponse)],
          ),
        ));
    }
    if (position != null) {
      result$
        ..add('position')
        ..add(serializers.serialize(
          position,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
