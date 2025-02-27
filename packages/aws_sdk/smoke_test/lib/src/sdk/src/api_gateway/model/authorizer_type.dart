// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.authorizer_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO\_USER\_POOLS` for using an Amazon Cognito user pool.
class AuthorizerType extends _i1.SmithyEnum<AuthorizerType> {
  const AuthorizerType._(
    super.index,
    super.name,
    super.value,
  );

  const AuthorizerType._sdkUnknown(super.value) : super.sdkUnknown();

  static const cognitoUserPools = AuthorizerType._(
    0,
    'COGNITO_USER_POOLS',
    'COGNITO_USER_POOLS',
  );

  static const request = AuthorizerType._(
    1,
    'REQUEST',
    'REQUEST',
  );

  static const token = AuthorizerType._(
    2,
    'TOKEN',
    'TOKEN',
  );

  /// All values of [AuthorizerType].
  static const values = <AuthorizerType>[
    AuthorizerType.cognitoUserPools,
    AuthorizerType.request,
    AuthorizerType.token,
  ];

  static const List<_i1.SmithySerializer<AuthorizerType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AuthorizerType',
      values: values,
      sdkUnknown: AuthorizerType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension AuthorizerTypeHelpers on List<AuthorizerType> {
  /// Returns the value of [AuthorizerType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AuthorizerType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AuthorizerType] whose value matches [value].
  AuthorizerType byValue(String value) => firstWhere((el) => el.value == value);
}
