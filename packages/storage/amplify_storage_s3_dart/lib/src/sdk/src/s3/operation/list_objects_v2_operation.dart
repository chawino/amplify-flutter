// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.operation.list_objects_v2_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/serializers.dart'
    as _i6;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_output.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/list_objects_v2_request.dart'
    as _i2;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/no_such_bucket.dart'
    as _i9;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Returns some or all (up to 1,000) of the objects in a bucket with each request. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A `200 OK` response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. Objects are returned sorted in an ascending order of the respective key names in the list. For more information about listing objects, see [Listing object keys programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html) in the _Amazon S3 User Guide_.
///
/// To use this operation, you must have READ access to the bucket.
///
/// To use this action in an Identity and Access Management (IAM) policy, you must have permission to perform the `s3:ListBucket` action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html) in the _Amazon S3 User Guide_.
///
/// This section describes the latest revision of this action. We recommend that you use this revised API operation for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API operation, [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html).
///
/// To get a list of your buckets, see [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).
///
/// The following operations are related to `ListObjectsV2`:
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
///
/// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
///
/// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
class ListObjectsV2Operation extends _i1.PaginatedHttpOperation<
    _i2.ListObjectsV2RequestPayload,
    _i2.ListObjectsV2Request,
    _i3.ListObjectsV2OutputPayload,
    _i3.ListObjectsV2Output,
    String,
    int,
    _i3.ListObjectsV2Output> {
  /// Returns some or all (up to 1,000) of the objects in a bucket with each request. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A `200 OK` response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. Objects are returned sorted in an ascending order of the respective key names in the list. For more information about listing objects, see [Listing object keys programmatically](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html) in the _Amazon S3 User Guide_.
  ///
  /// To use this operation, you must have READ access to the bucket.
  ///
  /// To use this action in an Identity and Access Management (IAM) policy, you must have permission to perform the `s3:ListBucket` action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html) in the _Amazon S3 User Guide_.
  ///
  /// This section describes the latest revision of this action. We recommend that you use this revised API operation for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API operation, [ListObjects](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html).
  ///
  /// To get a list of your buckets, see [ListBuckets](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html).
  ///
  /// The following operations are related to `ListObjectsV2`:
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  ///
  /// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  ListObjectsV2Operation({
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ListObjectsV2RequestPayload,
          _i2.ListObjectsV2Request,
          _i3.ListObjectsV2OutputPayload,
          _i3.ListObjectsV2Output>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i4.WithSigV4(
              region: _region,
              service: _i7.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i5.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.S3ClientConfig _s3ClientConfig;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListObjectsV2Request input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?list-type=2'
            : r'/?list-type=2';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.optionalObjectAttributes != null) {
          if (input.optionalObjectAttributes!.isNotEmpty) {
            b.headers['x-amz-optional-object-attributes'] = input
                .optionalObjectAttributes!
                .map((el) => el.value)
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.delimiter != null) {
          b.queryParameters.add(
            'delimiter',
            input.delimiter!,
          );
        }
        if (input.encodingType != null) {
          b.queryParameters.add(
            'encoding-type',
            input.encodingType!.value,
          );
        }
        if (input.maxKeys != null) {
          b.queryParameters.add(
            'max-keys',
            input.maxKeys!.toString(),
          );
        }
        if (input.prefix != null) {
          b.queryParameters.add(
            'prefix',
            input.prefix!,
          );
        }
        if (input.continuationToken != null) {
          b.queryParameters.add(
            'continuation-token',
            input.continuationToken!,
          );
        }
        if (input.fetchOwner != null) {
          b.queryParameters.add(
            'fetch-owner',
            input.fetchOwner!.toString(),
          );
        }
        if (input.startAfter != null) {
          b.queryParameters.add(
            'start-after',
            input.startAfter!,
          );
        }
      });
  @override
  int successCode([_i3.ListObjectsV2Output? output]) => 200;
  @override
  _i3.ListObjectsV2Output buildOutput(
    _i3.ListObjectsV2OutputPayload payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListObjectsV2Output.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.NoSuchBucket, _i9.NoSuchBucket>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchBucket',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchBucket,
          builder: _i9.NoSuchBucket.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListObjectsV2';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri {
    var baseUri = _baseUri ?? endpoint.uri;
    if (_s3ClientConfig.useDualStack) {
      baseUri = baseUri.replace(
        host: baseUri.host.replaceFirst(RegExp(r'^s3\.'), 's3.dualstack.'),
      );
    }
    if (_s3ClientConfig.useAcceleration) {
      baseUri = baseUri.replace(
        host: baseUri.host
            .replaceFirst(RegExp('$_region\\.'), '')
            .replaceFirst(RegExp(r'^s3\.'), 's3-accelerate.'),
      );
    }
    return baseUri;
  }

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListObjectsV2Output> run(
    _i2.ListObjectsV2Request input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
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

  @override
  String? getToken(_i3.ListObjectsV2Output output) =>
      output.nextContinuationToken;
  @override
  _i3.ListObjectsV2Output getItems(_i3.ListObjectsV2Output output) => output;
  @override
  _i2.ListObjectsV2Request rebuildInput(
    _i2.ListObjectsV2Request input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.continuationToken = token;
        if (pageSize != null) {
          b.maxKeys = pageSize;
        }
      });
}
