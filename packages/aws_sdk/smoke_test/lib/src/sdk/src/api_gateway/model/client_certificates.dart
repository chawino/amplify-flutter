// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.client_certificates; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart'
    as _i2;

part 'client_certificates.g.dart';

/// Represents a collection of ClientCertificate resources.
abstract class ClientCertificates
    with _i1.AWSEquatable<ClientCertificates>
    implements Built<ClientCertificates, ClientCertificatesBuilder> {
  /// Represents a collection of ClientCertificate resources.
  factory ClientCertificates({
    List<_i2.ClientCertificate>? items,
    String? position,
  }) {
    return _$ClientCertificates._(
      items: items == null ? null : _i3.BuiltList(items),
      position: position,
    );
  }

  /// Represents a collection of ClientCertificate resources.
  factory ClientCertificates.build(
          [void Function(ClientCertificatesBuilder) updates]) =
      _$ClientCertificates;

  const ClientCertificates._();

  /// Constructs a [ClientCertificates] from a [payload] and [response].
  factory ClientCertificates.fromResponse(
    ClientCertificates payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ClientCertificates>> serializers = [
    ClientCertificatesRestJson1Serializer()
  ];

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.ClientCertificate>? get items;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  List<Object?> get props => [
        items,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientCertificates')
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

class ClientCertificatesRestJson1Serializer
    extends _i4.StructuredSmithySerializer<ClientCertificates> {
  const ClientCertificatesRestJson1Serializer() : super('ClientCertificates');

  @override
  Iterable<Type> get types => const [
        ClientCertificates,
        _$ClientCertificates,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ClientCertificates deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientCertificatesBuilder();
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
              [FullType(_i2.ClientCertificate)],
            ),
          ) as _i3.BuiltList<_i2.ClientCertificate>));
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
    ClientCertificates object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ClientCertificates(:items, :position) = object;
    if (items != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ClientCertificate)],
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
