// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.operation.sign_up_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i24;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i19;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/sign_up_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart'
    as _i21;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart'
    as _i22;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart'
    as _i23;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Registers the user in the specified user pool and creates a user name, password, and user attributes.
///
/// This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers require you to register an origination phone number before you can send SMS messages to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must receive SMS messages might not be able to sign up, activate their accounts, or sign in.
///
/// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon Simple Notification Service might place your account in the SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you can send messages only to verified phone numbers. After you test your app while in the sandbox environment, you can move out of the sandbox and into production. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
class SignUpOperation extends _i1.HttpOperation<_i2.SignUpRequest,
    _i2.SignUpRequest, _i3.SignUpResponse, _i3.SignUpResponse> {
  /// Registers the user in the specified user pool and creates a user name, password, and user attributes.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers require you to register an origination phone number before you can send SMS messages to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must receive SMS messages might not be able to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon Simple Notification Service might place your account in the SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you can send messages only to verified phone numbers. After you test your app while in the sandbox environment, you can move out of the sandbox and into production. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  SignUpOperation({
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
      _i1.HttpProtocol<_i2.SignUpRequest, _i2.SignUpRequest, _i3.SignUpResponse,
          _i3.SignUpResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.SignUp',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true,
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
  _i1.HttpRequest buildRequest(_i2.SignUpRequest input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.SignUpResponse? output]) => 200;
  @override
  _i3.SignUpResponse buildOutput(
    _i3.SignUpResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.SignUpResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.CodeDeliveryFailureException,
            _i9.CodeDeliveryFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'CodeDeliveryFailureException',
          ),
          _i1.ErrorKind.client,
          _i9.CodeDeliveryFailureException,
          statusCode: 400,
          builder: _i9.CodeDeliveryFailureException.fromResponse,
        ),
        _i1.SmithyError<_i10.ForbiddenException, _i10.ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i10.ForbiddenException,
          statusCode: 403,
          builder: _i10.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<_i11.InternalErrorException,
            _i11.InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i11.InternalErrorException,
          builder: _i11.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidEmailRoleAccessPolicyException,
            _i12.InvalidEmailRoleAccessPolicyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidEmailRoleAccessPolicyException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidEmailRoleAccessPolicyException,
          statusCode: 400,
          builder: _i12.InvalidEmailRoleAccessPolicyException.fromResponse,
        ),
        _i1.SmithyError<_i13.InvalidLambdaResponseException,
            _i13.InvalidLambdaResponseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidLambdaResponseException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidLambdaResponseException,
          statusCode: 400,
          builder: _i13.InvalidLambdaResponseException.fromResponse,
        ),
        _i1.SmithyError<_i14.InvalidParameterException,
            _i14.InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i14.InvalidParameterException,
          statusCode: 400,
          builder: _i14.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<_i15.InvalidPasswordException,
            _i15.InvalidPasswordException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidPasswordException',
          ),
          _i1.ErrorKind.client,
          _i15.InvalidPasswordException,
          statusCode: 400,
          builder: _i15.InvalidPasswordException.fromResponse,
        ),
        _i1.SmithyError<_i16.InvalidSmsRoleAccessPolicyException,
            _i16.InvalidSmsRoleAccessPolicyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidSmsRoleAccessPolicyException',
          ),
          _i1.ErrorKind.client,
          _i16.InvalidSmsRoleAccessPolicyException,
          statusCode: 400,
          builder: _i16.InvalidSmsRoleAccessPolicyException.fromResponse,
        ),
        _i1.SmithyError<_i17.InvalidSmsRoleTrustRelationshipException,
            _i17.InvalidSmsRoleTrustRelationshipException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidSmsRoleTrustRelationshipException',
          ),
          _i1.ErrorKind.client,
          _i17.InvalidSmsRoleTrustRelationshipException,
          statusCode: 400,
          builder: _i17.InvalidSmsRoleTrustRelationshipException.fromResponse,
        ),
        _i1.SmithyError<_i18.NotAuthorizedException,
            _i18.NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i18.NotAuthorizedException,
          statusCode: 403,
          builder: _i18.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<_i19.ResourceNotFoundException,
            _i19.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i19.ResourceNotFoundException,
          statusCode: 404,
          builder: _i19.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i20.TooManyRequestsException,
            _i20.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i20.TooManyRequestsException,
          statusCode: 429,
          builder: _i20.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<_i21.UnexpectedLambdaException,
            _i21.UnexpectedLambdaException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UnexpectedLambdaException',
          ),
          _i1.ErrorKind.client,
          _i21.UnexpectedLambdaException,
          statusCode: 400,
          builder: _i21.UnexpectedLambdaException.fromResponse,
        ),
        _i1.SmithyError<_i22.UserLambdaValidationException,
            _i22.UserLambdaValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserLambdaValidationException',
          ),
          _i1.ErrorKind.client,
          _i22.UserLambdaValidationException,
          statusCode: 400,
          builder: _i22.UserLambdaValidationException.fromResponse,
        ),
        _i1.SmithyError<_i23.UsernameExistsException,
            _i23.UsernameExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UsernameExistsException',
          ),
          _i1.ErrorKind.client,
          _i23.UsernameExistsException,
          statusCode: 400,
          builder: _i23.UsernameExistsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'SignUp';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.SignUpResponse> run(
    _i2.SignUpRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i24.runZoned(
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
