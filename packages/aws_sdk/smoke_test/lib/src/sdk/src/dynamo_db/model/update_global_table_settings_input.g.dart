// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_global_table_settings_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableSettingsInput extends UpdateGlobalTableSettingsInput {
  @override
  final String globalTableName;
  @override
  final _i3.BillingMode? globalTableBillingMode;
  @override
  final _i4.Int64? globalTableProvisionedWriteCapacityUnits;
  @override
  final _i5.AutoScalingSettingsUpdate?
      globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;
  @override
  final _i8.BuiltList<_i6.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
      globalTableGlobalSecondaryIndexSettingsUpdate;
  @override
  final _i8.BuiltList<_i7.ReplicaSettingsUpdate>? replicaSettingsUpdate;

  factory _$UpdateGlobalTableSettingsInput(
          [void Function(UpdateGlobalTableSettingsInputBuilder)? updates]) =>
      (new UpdateGlobalTableSettingsInputBuilder()..update(updates))._build();

  _$UpdateGlobalTableSettingsInput._(
      {required this.globalTableName,
      this.globalTableBillingMode,
      this.globalTableProvisionedWriteCapacityUnits,
      this.globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
      this.globalTableGlobalSecondaryIndexSettingsUpdate,
      this.replicaSettingsUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        globalTableName, r'UpdateGlobalTableSettingsInput', 'globalTableName');
  }

  @override
  UpdateGlobalTableSettingsInput rebuild(
          void Function(UpdateGlobalTableSettingsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableSettingsInputBuilder toBuilder() =>
      new UpdateGlobalTableSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableSettingsInput &&
        globalTableName == other.globalTableName &&
        globalTableBillingMode == other.globalTableBillingMode &&
        globalTableProvisionedWriteCapacityUnits ==
            other.globalTableProvisionedWriteCapacityUnits &&
        globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate ==
            other
                .globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate &&
        globalTableGlobalSecondaryIndexSettingsUpdate ==
            other.globalTableGlobalSecondaryIndexSettingsUpdate &&
        replicaSettingsUpdate == other.replicaSettingsUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableName.hashCode);
    _$hash = $jc(_$hash, globalTableBillingMode.hashCode);
    _$hash = $jc(_$hash, globalTableProvisionedWriteCapacityUnits.hashCode);
    _$hash = $jc(_$hash,
        globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate.hashCode);
    _$hash =
        $jc(_$hash, globalTableGlobalSecondaryIndexSettingsUpdate.hashCode);
    _$hash = $jc(_$hash, replicaSettingsUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGlobalTableSettingsInputBuilder
    implements
        Builder<UpdateGlobalTableSettingsInput,
            UpdateGlobalTableSettingsInputBuilder> {
  _$UpdateGlobalTableSettingsInput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i3.BillingMode? _globalTableBillingMode;
  _i3.BillingMode? get globalTableBillingMode => _$this._globalTableBillingMode;
  set globalTableBillingMode(_i3.BillingMode? globalTableBillingMode) =>
      _$this._globalTableBillingMode = globalTableBillingMode;

  _i4.Int64? _globalTableProvisionedWriteCapacityUnits;
  _i4.Int64? get globalTableProvisionedWriteCapacityUnits =>
      _$this._globalTableProvisionedWriteCapacityUnits;
  set globalTableProvisionedWriteCapacityUnits(
          _i4.Int64? globalTableProvisionedWriteCapacityUnits) =>
      _$this._globalTableProvisionedWriteCapacityUnits =
          globalTableProvisionedWriteCapacityUnits;

  _i5.AutoScalingSettingsUpdateBuilder?
      _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;
  _i5.AutoScalingSettingsUpdateBuilder
      get globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => _$this
              ._globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate ??=
          new _i5.AutoScalingSettingsUpdateBuilder();
  set globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate(
          _i5.AutoScalingSettingsUpdateBuilder?
              globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate) =>
      _$this._globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate =
          globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate;

  _i8.ListBuilder<_i6.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
      _globalTableGlobalSecondaryIndexSettingsUpdate;
  _i8.ListBuilder<_i6.GlobalTableGlobalSecondaryIndexSettingsUpdate>
      get globalTableGlobalSecondaryIndexSettingsUpdate =>
          _$this._globalTableGlobalSecondaryIndexSettingsUpdate ??= new _i8
              .ListBuilder<_i6.GlobalTableGlobalSecondaryIndexSettingsUpdate>();
  set globalTableGlobalSecondaryIndexSettingsUpdate(
          _i8.ListBuilder<_i6.GlobalTableGlobalSecondaryIndexSettingsUpdate>?
              globalTableGlobalSecondaryIndexSettingsUpdate) =>
      _$this._globalTableGlobalSecondaryIndexSettingsUpdate =
          globalTableGlobalSecondaryIndexSettingsUpdate;

  _i8.ListBuilder<_i7.ReplicaSettingsUpdate>? _replicaSettingsUpdate;
  _i8.ListBuilder<_i7.ReplicaSettingsUpdate> get replicaSettingsUpdate =>
      _$this._replicaSettingsUpdate ??=
          new _i8.ListBuilder<_i7.ReplicaSettingsUpdate>();
  set replicaSettingsUpdate(
          _i8.ListBuilder<_i7.ReplicaSettingsUpdate>? replicaSettingsUpdate) =>
      _$this._replicaSettingsUpdate = replicaSettingsUpdate;

  UpdateGlobalTableSettingsInputBuilder();

  UpdateGlobalTableSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _globalTableBillingMode = $v.globalTableBillingMode;
      _globalTableProvisionedWriteCapacityUnits =
          $v.globalTableProvisionedWriteCapacityUnits;
      _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = $v
          .globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
          ?.toBuilder();
      _globalTableGlobalSecondaryIndexSettingsUpdate =
          $v.globalTableGlobalSecondaryIndexSettingsUpdate?.toBuilder();
      _replicaSettingsUpdate = $v.replicaSettingsUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableSettingsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableSettingsInput;
  }

  @override
  void update(void Function(UpdateGlobalTableSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableSettingsInput build() => _build();

  _$UpdateGlobalTableSettingsInput _build() {
    _$UpdateGlobalTableSettingsInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableSettingsInput._(
              globalTableName: BuiltValueNullFieldError.checkNotNull(
                  globalTableName,
                  r'UpdateGlobalTableSettingsInput',
                  'globalTableName'),
              globalTableBillingMode: globalTableBillingMode,
              globalTableProvisionedWriteCapacityUnits:
                  globalTableProvisionedWriteCapacityUnits,
              globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate:
                  _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
                      ?.build(),
              globalTableGlobalSecondaryIndexSettingsUpdate:
                  _globalTableGlobalSecondaryIndexSettingsUpdate?.build(),
              replicaSettingsUpdate: _replicaSettingsUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate';
        _globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate?.build();
        _$failedField = 'globalTableGlobalSecondaryIndexSettingsUpdate';
        _globalTableGlobalSecondaryIndexSettingsUpdate?.build();
        _$failedField = 'replicaSettingsUpdate';
        _replicaSettingsUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableSettingsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
