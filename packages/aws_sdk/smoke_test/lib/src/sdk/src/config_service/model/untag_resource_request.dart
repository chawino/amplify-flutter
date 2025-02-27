// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.untag_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_resource_request.g.dart';

abstract class UntagResourceRequest
    with
        _i1.HttpInput<UntagResourceRequest>,
        _i2.AWSEquatable<UntagResourceRequest>
    implements Built<UntagResourceRequest, UntagResourceRequestBuilder> {
  factory UntagResourceRequest({
    required String resourceArn,
    required List<String> tagKeys,
  }) {
    return _$UntagResourceRequest._(
      resourceArn: resourceArn,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagResourceRequest.build(
          [void Function(UntagResourceRequestBuilder) updates]) =
      _$UntagResourceRequest;

  const UntagResourceRequest._();

  factory UntagResourceRequest.fromRequest(
    UntagResourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UntagResourceRequest>> serializers = [
    UntagResourceRequestAwsJson11Serializer()
  ];

  /// The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are `ConfigRule`, `ConfigurationAggregator` and `AggregatorAuthorization`.
  String get resourceArn;

  /// The keys of the tags to be removed.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceArn,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagResourceRequest')
      ..add(
        'resourceArn',
        resourceArn,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

class UntagResourceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UntagResourceRequest> {
  const UntagResourceRequestAwsJson11Serializer()
      : super('UntagResourceRequest');

  @override
  Iterable<Type> get types => const [
        UntagResourceRequest,
        _$UntagResourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UntagResourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagResourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagKeys':
          result.tagKeys.replace((serializers.deserialize(
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
    UntagResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UntagResourceRequest(:resourceArn, :tagKeys) = object;
    result$.addAll([
      'ResourceArn',
      serializers.serialize(
        resourceArn,
        specifiedType: const FullType(String),
      ),
      'TagKeys',
      serializers.serialize(
        tagKeys,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ]);
    return result$;
  }
}
