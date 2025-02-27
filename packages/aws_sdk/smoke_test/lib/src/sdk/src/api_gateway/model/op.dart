// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.op; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Op extends _i1.SmithyEnum<Op> {
  const Op._(
    super.index,
    super.name,
    super.value,
  );

  const Op._sdkUnknown(super.value) : super.sdkUnknown();

  static const add = Op._(
    0,
    'add',
    'add',
  );

  static const copy = Op._(
    1,
    'copy',
    'copy',
  );

  static const move = Op._(
    2,
    'move',
    'move',
  );

  static const remove = Op._(
    3,
    'remove',
    'remove',
  );

  static const replace = Op._(
    4,
    'replace',
    'replace',
  );

  static const test = Op._(
    5,
    'test',
    'test',
  );

  /// All values of [Op].
  static const values = <Op>[
    Op.add,
    Op.copy,
    Op.move,
    Op.remove,
    Op.replace,
    Op.test,
  ];

  static const List<_i1.SmithySerializer<Op>> serializers = [
    _i1.SmithyEnumSerializer(
      'Op',
      values: values,
      sdkUnknown: Op._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension OpHelpers on List<Op> {
  /// Returns the value of [Op] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Op byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Op] whose value matches [value].
  Op byValue(String value) => firstWhere((el) => el.value == value);
}
