// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.delete_conformance_pack_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_conformance_pack_request.g.dart';

abstract class DeleteConformancePackRequest
    with
        _i1.HttpInput<DeleteConformancePackRequest>,
        _i2.AWSEquatable<DeleteConformancePackRequest>
    implements
        Built<DeleteConformancePackRequest,
            DeleteConformancePackRequestBuilder> {
  factory DeleteConformancePackRequest({required String conformancePackName}) {
    return _$DeleteConformancePackRequest._(
        conformancePackName: conformancePackName);
  }

  factory DeleteConformancePackRequest.build(
          [void Function(DeleteConformancePackRequestBuilder) updates]) =
      _$DeleteConformancePackRequest;

  const DeleteConformancePackRequest._();

  factory DeleteConformancePackRequest.fromRequest(
    DeleteConformancePackRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteConformancePackRequest>>
      serializers = [DeleteConformancePackRequestAwsJson11Serializer()];

  /// Name of the conformance pack you want to delete.
  String get conformancePackName;
  @override
  DeleteConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [conformancePackName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteConformancePackRequest')
      ..add(
        'conformancePackName',
        conformancePackName,
      );
    return helper.toString();
  }
}

class DeleteConformancePackRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteConformancePackRequest> {
  const DeleteConformancePackRequestAwsJson11Serializer()
      : super('DeleteConformancePackRequest');

  @override
  Iterable<Type> get types => const [
        DeleteConformancePackRequest,
        _$DeleteConformancePackRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteConformancePackRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteConformancePackRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
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
    DeleteConformancePackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteConformancePackRequest(:conformancePackName) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
