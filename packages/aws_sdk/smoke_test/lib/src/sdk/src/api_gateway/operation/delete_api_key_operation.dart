// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.operation.delete_api_key_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/model/delete_api_key_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i12;

/// Deletes the ApiKey resource.
class DeleteApiKeyOperation extends _i1.HttpOperation<
    _i2.DeleteApiKeyRequestPayload,
    _i2.DeleteApiKeyRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Deletes the ApiKey resource.
  DeleteApiKeyOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.DeleteApiKeyRequestPayload, _i2.DeleteApiKeyRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
            const _i1.WithHeader(
              'Accept',
              'application/json',
            ),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DeleteApiKeyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'DELETE';
        b.path = r'/apikeys/{apiKey}';
      });
  @override
  int successCode([_i1.Unit? output]) => 202;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i8.BadRequestException, _i8.BadRequestException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          _i8.BadRequestException,
          statusCode: 400,
          builder: _i8.BadRequestException.fromResponse,
        ),
        _i1.SmithyError<_i9.ConflictException, _i9.ConflictException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'ConflictException',
          ),
          _i1.ErrorKind.client,
          _i9.ConflictException,
          statusCode: 409,
          builder: _i9.ConflictException.fromResponse,
        ),
        _i1.SmithyError<_i10.NotFoundException, _i10.NotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.NotFoundException,
          statusCode: 404,
          builder: _i10.NotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i11.TooManyRequestsExceptionPayload,
            _i11.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i11.TooManyRequestsException,
          statusCode: 429,
          builder: _i11.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<_i12.UnauthorizedException, _i12.UnauthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          _i12.UnauthorizedException,
          statusCode: 401,
          builder: _i12.UnauthorizedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeleteApiKey';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.DeleteApiKeyRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i13.runZoned(
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
