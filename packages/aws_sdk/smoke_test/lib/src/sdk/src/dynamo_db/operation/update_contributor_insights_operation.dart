// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.update_contributor_insights_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_contributor_insights_output.dart'
    as _i3;

/// Updates the status for contributor insights for a specific table or index. CloudWatch Contributor Insights for DynamoDB graphs display the partition key and (if applicable) sort key of frequently accessed items and frequently throttled items in plaintext. If you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this table’s partition key and sort key data with an Amazon Web Services managed key or customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB for this table.
class UpdateContributorInsightsOperation extends _i1.HttpOperation<
    _i2.UpdateContributorInsightsInput,
    _i2.UpdateContributorInsightsInput,
    _i3.UpdateContributorInsightsOutput,
    _i3.UpdateContributorInsightsOutput> {
  /// Updates the status for contributor insights for a specific table or index. CloudWatch Contributor Insights for DynamoDB graphs display the partition key and (if applicable) sort key of frequently accessed items and frequently throttled items in plaintext. If you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this table’s partition key and sort key data with an Amazon Web Services managed key or customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB for this table.
  UpdateContributorInsightsOperation({
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
      _i1.HttpProtocol<
          _i2.UpdateContributorInsightsInput,
          _i2.UpdateContributorInsightsInput,
          _i3.UpdateContributorInsightsOutput,
          _i3.UpdateContributorInsightsOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.UpdateContributorInsights',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDb,
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
  _i1.HttpRequest buildRequest(_i2.UpdateContributorInsightsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UpdateContributorInsightsOutput? output]) => 200;
  @override
  _i3.UpdateContributorInsightsOutput buildOutput(
    _i3.UpdateContributorInsightsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UpdateContributorInsightsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InternalServerError, _i9.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerError,
          builder: _i9.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i10.ResourceNotFoundException,
            _i10.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.ResourceNotFoundException,
          builder: _i10.ResourceNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateContributorInsights';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UpdateContributorInsightsOutput> run(
    _i2.UpdateContributorInsightsInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
