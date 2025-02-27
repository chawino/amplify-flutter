// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v1.json_rpc_10.model.json_unions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/my_union.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'json_unions_output.g.dart';

abstract class JsonUnionsOutput
    with _i1.AWSEquatable<JsonUnionsOutput>
    implements Built<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  factory JsonUnionsOutput({_i2.MyUnion? contents}) {
    return _$JsonUnionsOutput._(contents: contents);
  }

  factory JsonUnionsOutput.build(
      [void Function(JsonUnionsOutputBuilder) updates]) = _$JsonUnionsOutput;

  const JsonUnionsOutput._();

  /// Constructs a [JsonUnionsOutput] from a [payload] and [response].
  factory JsonUnionsOutput.fromResponse(
    JsonUnionsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<JsonUnionsOutput>> serializers = [
    JsonUnionsOutputAwsJson10Serializer()
  ];

  /// A union with a representative set of types for members.
  _i2.MyUnion? get contents;
  @override
  List<Object?> get props => [contents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonUnionsOutput')
      ..add(
        'contents',
        contents,
      );
    return helper.toString();
  }
}

class JsonUnionsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<JsonUnionsOutput> {
  const JsonUnionsOutputAwsJson10Serializer() : super('JsonUnionsOutput');

  @override
  Iterable<Type> get types => const [
        JsonUnionsOutput,
        _$JsonUnionsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  JsonUnionsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonUnionsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contents':
          result.contents = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MyUnion),
          ) as _i2.MyUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonUnionsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonUnionsOutput(:contents) = object;
    if (contents != null) {
      result$
        ..add('contents')
        ..add(serializers.serialize(
          contents,
          specifiedType: const FullType(_i2.MyUnion),
        ));
    }
    return result$;
  }
}
