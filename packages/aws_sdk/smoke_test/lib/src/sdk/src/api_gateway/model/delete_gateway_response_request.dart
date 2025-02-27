// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.delete_gateway_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i3;

part 'delete_gateway_response_request.g.dart';

/// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
abstract class DeleteGatewayResponseRequest
    with
        _i1.HttpInput<DeleteGatewayResponseRequestPayload>,
        _i2.AWSEquatable<DeleteGatewayResponseRequest>
    implements
        Built<DeleteGatewayResponseRequest,
            DeleteGatewayResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteGatewayResponseRequestPayload> {
  /// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
  factory DeleteGatewayResponseRequest({
    required String restApiId,
    required _i3.GatewayResponseType responseType,
  }) {
    return _$DeleteGatewayResponseRequest._(
      restApiId: restApiId,
      responseType: responseType,
    );
  }

  /// Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
  factory DeleteGatewayResponseRequest.build(
          [void Function(DeleteGatewayResponseRequestBuilder) updates]) =
      _$DeleteGatewayResponseRequest;

  const DeleteGatewayResponseRequest._();

  factory DeleteGatewayResponseRequest.fromRequest(
    DeleteGatewayResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteGatewayResponseRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['responseType'] != null) {
          b.responseType =
              _i3.GatewayResponseType.values.byValue(labels['responseType']!);
        }
      });

  static const List<_i1.SmithySerializer<DeleteGatewayResponseRequestPayload>>
      serializers = [DeleteGatewayResponseRequestRestJson1Serializer()];

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The response type of the associated GatewayResponse.
  _i3.GatewayResponseType get responseType;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'responseType':
        return responseType.value;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteGatewayResponseRequestPayload getPayload() =>
      DeleteGatewayResponseRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        responseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteGatewayResponseRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'responseType',
        responseType,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class DeleteGatewayResponseRequestPayload
    with
        _i2.AWSEquatable<DeleteGatewayResponseRequestPayload>
    implements
        Built<DeleteGatewayResponseRequestPayload,
            DeleteGatewayResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteGatewayResponseRequestPayload(
          [void Function(DeleteGatewayResponseRequestPayloadBuilder) updates]) =
      _$DeleteGatewayResponseRequestPayload;

  const DeleteGatewayResponseRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteGatewayResponseRequestPayload');
    return helper.toString();
  }
}

class DeleteGatewayResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteGatewayResponseRequestPayload> {
  const DeleteGatewayResponseRequestRestJson1Serializer()
      : super('DeleteGatewayResponseRequest');

  @override
  Iterable<Type> get types => const [
        DeleteGatewayResponseRequest,
        _$DeleteGatewayResponseRequest,
        DeleteGatewayResponseRequestPayload,
        _$DeleteGatewayResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteGatewayResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteGatewayResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteGatewayResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
