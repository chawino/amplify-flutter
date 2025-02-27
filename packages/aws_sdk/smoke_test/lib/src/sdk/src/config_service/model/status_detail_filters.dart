// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.status_detail_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_rule_status.dart'
    as _i2;

part 'status_detail_filters.g.dart';

/// Status filter object to filter results based on specific member account ID or status type for an organization Config rule.
abstract class StatusDetailFilters
    with _i1.AWSEquatable<StatusDetailFilters>
    implements Built<StatusDetailFilters, StatusDetailFiltersBuilder> {
  /// Status filter object to filter results based on specific member account ID or status type for an organization Config rule.
  factory StatusDetailFilters({
    String? accountId,
    _i2.MemberAccountRuleStatus? memberAccountRuleStatus,
  }) {
    return _$StatusDetailFilters._(
      accountId: accountId,
      memberAccountRuleStatus: memberAccountRuleStatus,
    );
  }

  /// Status filter object to filter results based on specific member account ID or status type for an organization Config rule.
  factory StatusDetailFilters.build(
          [void Function(StatusDetailFiltersBuilder) updates]) =
      _$StatusDetailFilters;

  const StatusDetailFilters._();

  static const List<_i3.SmithySerializer<StatusDetailFilters>> serializers = [
    StatusDetailFiltersAwsJson11Serializer()
  ];

  /// The 12-digit account ID of the member account within an organization.
  String? get accountId;

  /// Indicates deployment status for Config rule in the member account. When management account calls `PutOrganizationConfigRule` action for the first time, Config rule status is created in the member account. When management account calls `PutOrganizationConfigRule` action for the second time, Config rule status is updated in the member account. Config rule status is deleted when the management account deletes `OrganizationConfigRule` and disables service access for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Config sets the state of the rule to:
  ///
  /// *   `CREATE_SUCCESSFUL` when Config rule has been created in the member account.
  ///
  /// *   `CREATE\_IN\_PROGRESS` when Config rule is being created in the member account.
  ///
  /// *   `CREATE_FAILED` when Config rule creation has failed in the member account.
  ///
  /// *   `DELETE_FAILED` when Config rule deletion has failed in the member account.
  ///
  /// *   `DELETE\_IN\_PROGRESS` when Config rule is being deleted in the member account.
  ///
  /// *   `DELETE_SUCCESSFUL` when Config rule has been deleted in the member account.
  ///
  /// *   `UPDATE_SUCCESSFUL` when Config rule has been updated in the member account.
  ///
  /// *   `UPDATE\_IN\_PROGRESS` when Config rule is being updated in the member account.
  ///
  /// *   `UPDATE_FAILED` when Config rule deletion has failed in the member account.
  _i2.MemberAccountRuleStatus? get memberAccountRuleStatus;
  @override
  List<Object?> get props => [
        accountId,
        memberAccountRuleStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StatusDetailFilters')
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'memberAccountRuleStatus',
        memberAccountRuleStatus,
      );
    return helper.toString();
  }
}

class StatusDetailFiltersAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<StatusDetailFilters> {
  const StatusDetailFiltersAwsJson11Serializer() : super('StatusDetailFilters');

  @override
  Iterable<Type> get types => const [
        StatusDetailFilters,
        _$StatusDetailFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StatusDetailFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusDetailFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MemberAccountRuleStatus':
          result.memberAccountRuleStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MemberAccountRuleStatus),
          ) as _i2.MemberAccountRuleStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StatusDetailFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StatusDetailFilters(:accountId, :memberAccountRuleStatus) = object;
    if (accountId != null) {
      result$
        ..add('AccountId')
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    if (memberAccountRuleStatus != null) {
      result$
        ..add('MemberAccountRuleStatus')
        ..add(serializers.serialize(
          memberAccountRuleStatus,
          specifiedType: const FullType(_i2.MemberAccountRuleStatus),
        ));
    }
    return result$;
  }
}
