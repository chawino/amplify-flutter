// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_validation_protocol.model.recursive_union_two; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/recursive_enum_string.dart'
    as _i2;
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

sealed class RecursiveUnionTwo extends _i1.SmithyUnion<RecursiveUnionTwo> {
  const RecursiveUnionTwo._();

  const factory RecursiveUnionTwo.string(_i2.RecursiveEnumString string) =
      RecursiveUnionTwoString$;

  const factory RecursiveUnionTwo.union(_i3.RecursiveUnionOne union) =
      RecursiveUnionTwoUnion$;

  const factory RecursiveUnionTwo.sdkUnknown(
    String name,
    Object value,
  ) = RecursiveUnionTwoSdkUnknown$;

  static const List<_i1.SmithySerializer<RecursiveUnionTwo>> serializers = [
    RecursiveUnionTwoRestJson1Serializer()
  ];

  _i2.RecursiveEnumString? get string => null;
  _i3.RecursiveUnionOne? get union => null;
  @override
  Object get value => (string ?? union)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'RecursiveUnionTwo');
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    if (union != null) {
      helper.add(
        r'union',
        union,
      );
    }
    return helper.toString();
  }
}

final class RecursiveUnionTwoString$ extends RecursiveUnionTwo {
  const RecursiveUnionTwoString$(this.string) : super._();

  @override
  final _i2.RecursiveEnumString string;

  @override
  String get name => 'string';
}

final class RecursiveUnionTwoUnion$ extends RecursiveUnionTwo {
  const RecursiveUnionTwoUnion$(this.union) : super._();

  @override
  final _i3.RecursiveUnionOne union;

  @override
  String get name => 'union';
}

final class RecursiveUnionTwoSdkUnknown$ extends RecursiveUnionTwo {
  const RecursiveUnionTwoSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class RecursiveUnionTwoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveUnionTwo> {
  const RecursiveUnionTwoRestJson1Serializer() : super('RecursiveUnionTwo');

  @override
  Iterable<Type> get types => const [
        RecursiveUnionTwo,
        RecursiveUnionTwoString$,
        RecursiveUnionTwoUnion$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveUnionTwo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'string':
        return RecursiveUnionTwoString$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.RecursiveEnumString),
        ) as _i2.RecursiveEnumString));
      case 'union':
        return RecursiveUnionTwoUnion$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.RecursiveUnionOne),
        ) as _i3.RecursiveUnionOne));
    }
    return RecursiveUnionTwo.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveUnionTwo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        RecursiveUnionTwoString$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.RecursiveEnumString),
          ),
        RecursiveUnionTwoUnion$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.RecursiveUnionOne),
          ),
        RecursiveUnionTwoSdkUnknown$(:final value) => value,
      },
    ];
  }
}
