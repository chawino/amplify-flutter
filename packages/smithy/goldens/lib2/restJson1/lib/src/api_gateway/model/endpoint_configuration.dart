// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.api_gateway.model.endpoint_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/api_gateway/model/endpoint_type.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'endpoint_configuration.g.dart';

abstract class EndpointConfiguration
    with _i1.AWSEquatable<EndpointConfiguration>
    implements Built<EndpointConfiguration, EndpointConfigurationBuilder> {
  factory EndpointConfiguration({
    List<_i2.EndpointType>? types,
    List<String>? vpcEndpointIds,
  }) {
    return _$EndpointConfiguration._(
      types: types == null ? null : _i3.BuiltList(types),
      vpcEndpointIds:
          vpcEndpointIds == null ? null : _i3.BuiltList(vpcEndpointIds),
    );
  }

  factory EndpointConfiguration.build(
          [void Function(EndpointConfigurationBuilder) updates]) =
      _$EndpointConfiguration;

  const EndpointConfiguration._();

  static const List<_i4.SmithySerializer<EndpointConfiguration>> serializers = [
    EndpointConfigurationRestJson1Serializer()
  ];

  _i3.BuiltList<_i2.EndpointType>? get types;
  _i3.BuiltList<String>? get vpcEndpointIds;
  @override
  List<Object?> get props => [
        types,
        vpcEndpointIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointConfiguration')
      ..add(
        'types',
        types,
      )
      ..add(
        'vpcEndpointIds',
        vpcEndpointIds,
      );
    return helper.toString();
  }
}

class EndpointConfigurationRestJson1Serializer
    extends _i4.StructuredSmithySerializer<EndpointConfiguration> {
  const EndpointConfigurationRestJson1Serializer()
      : super('EndpointConfiguration');

  @override
  Iterable<Type> get types => const [
        EndpointConfiguration,
        _$EndpointConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'types':
          result.types.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.EndpointType)],
            ),
          ) as _i3.BuiltList<_i2.EndpointType>));
        case 'vpcEndpointIds':
          result.vpcEndpointIds.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EndpointConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointConfiguration(:types, :vpcEndpointIds) = object;
    if (types != null) {
      result$
        ..add('types')
        ..add(serializers.serialize(
          types,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.EndpointType)],
          ),
        ));
    }
    if (vpcEndpointIds != null) {
      result$
        ..add('vpcEndpointIds')
        ..add(serializers.serialize(
          vpcEndpointIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
