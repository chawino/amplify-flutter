// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.model.identity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'identity.g.dart';

/// Contains details about the type of identity that made the request.
abstract class Identity
    with _i1.AWSEquatable<Identity>
    implements Built<Identity, IdentityBuilder> {
  /// Contains details about the type of identity that made the request.
  factory Identity({
    String? principalId,
    String? type,
  }) {
    return _$Identity._(
      principalId: principalId,
      type: type,
    );
  }

  /// Contains details about the type of identity that made the request.
  factory Identity.build([void Function(IdentityBuilder) updates]) = _$Identity;

  const Identity._();

  static const List<_i2.SmithySerializer<Identity>> serializers = [
    IdentityAwsJson10Serializer()
  ];

  /// A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".
  String? get principalId;

  /// The type of the identity. For Time To Live, the type is "Service".
  String? get type;
  @override
  List<Object?> get props => [
        principalId,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Identity')
      ..add(
        'principalId',
        principalId,
      )
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class IdentityAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<Identity> {
  const IdentityAwsJson10Serializer() : super('Identity');

  @override
  Iterable<Type> get types => const [
        Identity,
        _$Identity,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Identity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdentityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PrincipalId':
          result.principalId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
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
    Identity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Identity(:principalId, :type) = object;
    if (principalId != null) {
      result$
        ..add('PrincipalId')
        ..add(serializers.serialize(
          principalId,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add('Type')
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
