// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.get_documentation_parts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/location_status_type.dart'
    as _i4;

part 'get_documentation_parts_request.g.dart';

/// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
abstract class GetDocumentationPartsRequest
    with
        _i1.HttpInput<GetDocumentationPartsRequestPayload>,
        _i2.AWSEquatable<GetDocumentationPartsRequest>
    implements
        Built<GetDocumentationPartsRequest,
            GetDocumentationPartsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDocumentationPartsRequestPayload> {
  /// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
  factory GetDocumentationPartsRequest({
    required String restApiId,
    _i3.DocumentationPartType? type,
    String? nameQuery,
    String? path,
    String? position,
    int? limit,
    _i4.LocationStatusType? locationStatus,
  }) {
    return _$GetDocumentationPartsRequest._(
      restApiId: restApiId,
      type: type,
      nameQuery: nameQuery,
      path: path,
      position: position,
      limit: limit,
      locationStatus: locationStatus,
    );
  }

  /// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
  factory GetDocumentationPartsRequest.build(
          [void Function(GetDocumentationPartsRequestBuilder) updates]) =
      _$GetDocumentationPartsRequest;

  const GetDocumentationPartsRequest._();

  factory GetDocumentationPartsRequest.fromRequest(
    GetDocumentationPartsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDocumentationPartsRequest.build((b) {
        if (request.queryParameters['type'] != null) {
          b.type = _i3.DocumentationPartType.values
              .byValue(request.queryParameters['type']!);
        }
        if (request.queryParameters['name'] != null) {
          b.nameQuery = request.queryParameters['name']!;
        }
        if (request.queryParameters['path'] != null) {
          b.path = request.queryParameters['path']!;
        }
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['locationStatus'] != null) {
          b.locationStatus = _i4.LocationStatusType.values
              .byValue(request.queryParameters['locationStatus']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetDocumentationPartsRequestPayload>>
      serializers = [GetDocumentationPartsRequestRestJson1Serializer()];

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The type of API entities of the to-be-retrieved documentation parts.
  _i3.DocumentationPartType? get type;

  /// The name of API entities of the to-be-retrieved documentation parts.
  String? get nameQuery;

  /// The path of API entities of the to-be-retrieved documentation parts.
  String? get path;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The status of the API documentation parts to retrieve. Valid values are `DOCUMENTED` for retrieving DocumentationPart resources with content and `UNDOCUMENTED` for DocumentationPart resources without content.
  _i4.LocationStatusType? get locationStatus;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetDocumentationPartsRequestPayload getPayload() =>
      GetDocumentationPartsRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        type,
        nameQuery,
        path,
        position,
        limit,
        locationStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDocumentationPartsRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'nameQuery',
        nameQuery,
      )
      ..add(
        'path',
        path,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'locationStatus',
        locationStatus,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class GetDocumentationPartsRequestPayload
    with
        _i2.AWSEquatable<GetDocumentationPartsRequestPayload>
    implements
        Built<GetDocumentationPartsRequestPayload,
            GetDocumentationPartsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDocumentationPartsRequestPayload(
          [void Function(GetDocumentationPartsRequestPayloadBuilder) updates]) =
      _$GetDocumentationPartsRequestPayload;

  const GetDocumentationPartsRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationPartsRequestPayload');
    return helper.toString();
  }
}

class GetDocumentationPartsRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetDocumentationPartsRequestPayload> {
  const GetDocumentationPartsRequestRestJson1Serializer()
      : super('GetDocumentationPartsRequest');

  @override
  Iterable<Type> get types => const [
        GetDocumentationPartsRequest,
        _$GetDocumentationPartsRequest,
        GetDocumentationPartsRequestPayload,
        _$GetDocumentationPartsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDocumentationPartsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDocumentationPartsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetDocumentationPartsRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
