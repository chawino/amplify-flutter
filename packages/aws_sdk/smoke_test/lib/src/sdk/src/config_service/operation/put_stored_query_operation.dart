// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_stored_query_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_stored_query_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_concurrent_modification_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/too_many_tags_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i11;

/// Saves a new query or updates an existing saved query. The `QueryName` must be unique for a single Amazon Web Services account and a single Amazon Web Services Region. You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.
///
/// `PutStoredQuery` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
class PutStoredQueryOperation extends _i1.HttpOperation<
    _i2.PutStoredQueryRequest,
    _i2.PutStoredQueryRequest,
    _i3.PutStoredQueryResponse,
    _i3.PutStoredQueryResponse> {
  /// Saves a new query or updates an existing saved query. The `QueryName` must be unique for a single Amazon Web Services account and a single Amazon Web Services Region. You can create upto 300 queries in a single Amazon Web Services account and a single Amazon Web Services Region.
  ///
  /// `PutStoredQuery` is an idempotent API. Subsequent requests won’t create a duplicate resource if one was already created. If a following request has different `tags` values, Config will ignore these differences and treat it as an idempotent request of the previous. In this case, `tags` will not be updated, even if they are different.
  PutStoredQueryOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutStoredQueryRequest, _i2.PutStoredQueryRequest,
          _i3.PutStoredQueryResponse, _i3.PutStoredQueryResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutStoredQuery',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.PutStoredQueryRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutStoredQueryResponse? output]) => 200;
  @override
  _i3.PutStoredQueryResponse buildOutput(
    _i3.PutStoredQueryResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutStoredQueryResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ResourceConcurrentModificationException,
            _i9.ResourceConcurrentModificationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i9.ResourceConcurrentModificationException,
          builder: _i9.ResourceConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError<_i10.TooManyTagsException, _i10.TooManyTagsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'TooManyTagsException',
          ),
          _i1.ErrorKind.client,
          _i10.TooManyTagsException,
          builder: _i10.TooManyTagsException.fromResponse,
        ),
        _i1.SmithyError<_i11.ValidationException, _i11.ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i11.ValidationException,
          builder: _i11.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutStoredQuery';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutStoredQueryResponse> run(
    _i2.PutStoredQueryRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
