// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.operation.flattened_xml_map_with_xml_namespace_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Flattened maps with @xmlNamespace and @xmlName
class FlattenedXmlMapWithXmlNamespaceOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    _i2.FlattenedXmlMapWithXmlNamespaceOutput,
    _i2.FlattenedXmlMapWithXmlNamespaceOutput> {
  /// Flattened maps with @xmlNamespace and @xmlName
  FlattenedXmlMapWithXmlNamespaceOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i2.FlattenedXmlMapWithXmlNamespaceOutput,
          _i2.FlattenedXmlMapWithXmlNamespaceOutput>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: false,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/FlattenedXmlMapWithXmlNamespace';
      });
  @override
  int successCode([_i2.FlattenedXmlMapWithXmlNamespaceOutput? output]) => 200;
  @override
  _i2.FlattenedXmlMapWithXmlNamespaceOutput buildOutput(
    _i2.FlattenedXmlMapWithXmlNamespaceOutput payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.FlattenedXmlMapWithXmlNamespaceOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'FlattenedXmlMapWithXmlNamespace';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i2.FlattenedXmlMapWithXmlNamespaceOutput> run(
    _i1.Unit input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i7.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
