// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.return_values_on_condition_check_failure; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReturnValuesOnConditionCheckFailure
    extends _i1.SmithyEnum<ReturnValuesOnConditionCheckFailure> {
  const ReturnValuesOnConditionCheckFailure._(
    super.index,
    super.name,
    super.value,
  );

  const ReturnValuesOnConditionCheckFailure._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const allOld = ReturnValuesOnConditionCheckFailure._(
    0,
    'ALL_OLD',
    'ALL_OLD',
  );

  static const none = ReturnValuesOnConditionCheckFailure._(
    1,
    'NONE',
    'NONE',
  );

  /// All values of [ReturnValuesOnConditionCheckFailure].
  static const values = <ReturnValuesOnConditionCheckFailure>[
    ReturnValuesOnConditionCheckFailure.allOld,
    ReturnValuesOnConditionCheckFailure.none,
  ];

  static const List<_i1.SmithySerializer<ReturnValuesOnConditionCheckFailure>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ReturnValuesOnConditionCheckFailure',
      values: values,
      sdkUnknown: ReturnValuesOnConditionCheckFailure._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ReturnValuesOnConditionCheckFailureHelpers
    on List<ReturnValuesOnConditionCheckFailure> {
  /// Returns the value of [ReturnValuesOnConditionCheckFailure] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReturnValuesOnConditionCheckFailure byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReturnValuesOnConditionCheckFailure] whose value matches [value].
  ReturnValuesOnConditionCheckFailure byValue(String value) =>
      firstWhere((el) => el.value == value);
}
