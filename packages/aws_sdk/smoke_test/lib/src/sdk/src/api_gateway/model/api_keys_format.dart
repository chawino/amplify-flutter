// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.api_keys_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ApiKeysFormat extends _i1.SmithyEnum<ApiKeysFormat> {
  const ApiKeysFormat._(
    super.index,
    super.name,
    super.value,
  );

  const ApiKeysFormat._sdkUnknown(super.value) : super.sdkUnknown();

  static const csv = ApiKeysFormat._(
    0,
    'csv',
    'csv',
  );

  /// All values of [ApiKeysFormat].
  static const values = <ApiKeysFormat>[ApiKeysFormat.csv];

  static const List<_i1.SmithySerializer<ApiKeysFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'ApiKeysFormat',
      values: values,
      sdkUnknown: ApiKeysFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension ApiKeysFormatHelpers on List<ApiKeysFormat> {
  /// Returns the value of [ApiKeysFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ApiKeysFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ApiKeysFormat] whose value matches [value].
  ApiKeysFormat byValue(String value) => firstWhere((el) => el.value == value);
}
