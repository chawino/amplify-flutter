// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.model.post_player_action_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'post_player_action_output.g.dart';

abstract class PostPlayerActionOutput
    with _i1.AWSEquatable<PostPlayerActionOutput>
    implements Built<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  factory PostPlayerActionOutput({required _i2.PlayerAction action}) {
    return _$PostPlayerActionOutput._(action: action);
  }

  factory PostPlayerActionOutput.build(
          [void Function(PostPlayerActionOutputBuilder) updates]) =
      _$PostPlayerActionOutput;

  const PostPlayerActionOutput._();

  /// Constructs a [PostPlayerActionOutput] from a [payload] and [response].
  factory PostPlayerActionOutput.fromResponse(
    PostPlayerActionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<PostPlayerActionOutput>> serializers =
      [PostPlayerActionOutputRestJson1Serializer()];

  _i2.PlayerAction get action;
  @override
  List<Object?> get props => [action];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostPlayerActionOutput')
      ..add(
        'action',
        action,
      );
    return helper.toString();
  }
}

class PostPlayerActionOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PostPlayerActionOutput> {
  const PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [
        PostPlayerActionOutput,
        _$PostPlayerActionOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PostPlayerActionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PlayerAction),
          ) as _i2.PlayerAction);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostPlayerActionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PostPlayerActionOutput(:action) = object;
    result$.addAll([
      'action',
      serializers.serialize(
        action,
        specifiedType: const FullType(_i2.PlayerAction),
      ),
    ]);
    return result$;
  }
}
