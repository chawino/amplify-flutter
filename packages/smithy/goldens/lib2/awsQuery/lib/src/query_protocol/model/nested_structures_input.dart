// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.nested_structures_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_query_v2/src/query_protocol/model/struct_arg.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'nested_structures_input.g.dart';

abstract class NestedStructuresInput
    with
        _i1.HttpInput<NestedStructuresInput>,
        _i2.AWSEquatable<NestedStructuresInput>
    implements Built<NestedStructuresInput, NestedStructuresInputBuilder> {
  factory NestedStructuresInput({_i3.StructArg? nested}) {
    return _$NestedStructuresInput._(nested: nested);
  }

  factory NestedStructuresInput.build(
          [void Function(NestedStructuresInputBuilder) updates]) =
      _$NestedStructuresInput;

  const NestedStructuresInput._();

  factory NestedStructuresInput.fromRequest(
    NestedStructuresInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    NestedStructuresInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedStructuresInputBuilder b) {}
  _i3.StructArg? get nested;
  @override
  NestedStructuresInput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedStructuresInput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class NestedStructuresInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<NestedStructuresInput> {
  const NestedStructuresInputAwsQuerySerializer()
      : super('NestedStructuresInput');

  @override
  Iterable<Type> get types => const [
        NestedStructuresInput,
        _$NestedStructuresInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NestedStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StructArg),
            ) as _i3.StructArg));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as NestedStructuresInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'NestedStructuresInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.nested != null) {
      result
        ..add(const _i1.XmlElementName('Nested'))
        ..add(serializers.serialize(
          payload.nested!,
          specifiedType: const FullType(_i3.StructArg),
        ));
    }
    return result;
  }
}