// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.replica_global_secondary_index_auto_scaling_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i2;

part 'replica_global_secondary_index_auto_scaling_update.g.dart';

/// Represents the auto scaling settings of a global secondary index for a replica that will be modified.
abstract class ReplicaGlobalSecondaryIndexAutoScalingUpdate
    with
        _i1.AWSEquatable<ReplicaGlobalSecondaryIndexAutoScalingUpdate>
    implements
        Built<ReplicaGlobalSecondaryIndexAutoScalingUpdate,
            ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder> {
  /// Represents the auto scaling settings of a global secondary index for a replica that will be modified.
  factory ReplicaGlobalSecondaryIndexAutoScalingUpdate({
    String? indexName,
    _i2.AutoScalingSettingsUpdate? provisionedReadCapacityAutoScalingUpdate,
  }) {
    return _$ReplicaGlobalSecondaryIndexAutoScalingUpdate._(
      indexName: indexName,
      provisionedReadCapacityAutoScalingUpdate:
          provisionedReadCapacityAutoScalingUpdate,
    );
  }

  /// Represents the auto scaling settings of a global secondary index for a replica that will be modified.
  factory ReplicaGlobalSecondaryIndexAutoScalingUpdate.build(
      [void Function(ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexAutoScalingUpdate;

  const ReplicaGlobalSecondaryIndexAutoScalingUpdate._();

  static const List<
          _i3.SmithySerializer<ReplicaGlobalSecondaryIndexAutoScalingUpdate>>
      serializers = [
    ReplicaGlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
  ];

  /// The name of the global secondary index.
  String? get indexName;

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  _i2.AutoScalingSettingsUpdate? get provisionedReadCapacityAutoScalingUpdate;
  @override
  List<Object?> get props => [
        indexName,
        provisionedReadCapacityAutoScalingUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplicaGlobalSecondaryIndexAutoScalingUpdate')
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'provisionedReadCapacityAutoScalingUpdate',
        provisionedReadCapacityAutoScalingUpdate,
      );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<
        ReplicaGlobalSecondaryIndexAutoScalingUpdate> {
  const ReplicaGlobalSecondaryIndexAutoScalingUpdateAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexAutoScalingUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexAutoScalingUpdate,
        _$ReplicaGlobalSecondaryIndexAutoScalingUpdate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndexAutoScalingUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexAutoScalingUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedReadCapacityAutoScalingUpdate':
          result.provisionedReadCapacityAutoScalingUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
          ) as _i2.AutoScalingSettingsUpdate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaGlobalSecondaryIndexAutoScalingUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaGlobalSecondaryIndexAutoScalingUpdate(
      :indexName,
      :provisionedReadCapacityAutoScalingUpdate
    ) = object;
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (provisionedReadCapacityAutoScalingUpdate != null) {
      result$
        ..add('ProvisionedReadCapacityAutoScalingUpdate')
        ..add(serializers.serialize(
          provisionedReadCapacityAutoScalingUpdate,
          specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
        ));
    }
    return result$;
  }
}
