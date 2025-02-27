// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continuous_backups_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContinuousBackupsDescription extends ContinuousBackupsDescription {
  @override
  final _i2.ContinuousBackupsStatus continuousBackupsStatus;
  @override
  final _i3.PointInTimeRecoveryDescription? pointInTimeRecoveryDescription;

  factory _$ContinuousBackupsDescription(
          [void Function(ContinuousBackupsDescriptionBuilder)? updates]) =>
      (new ContinuousBackupsDescriptionBuilder()..update(updates))._build();

  _$ContinuousBackupsDescription._(
      {required this.continuousBackupsStatus,
      this.pointInTimeRecoveryDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(continuousBackupsStatus,
        r'ContinuousBackupsDescription', 'continuousBackupsStatus');
  }

  @override
  ContinuousBackupsDescription rebuild(
          void Function(ContinuousBackupsDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContinuousBackupsDescriptionBuilder toBuilder() =>
      new ContinuousBackupsDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContinuousBackupsDescription &&
        continuousBackupsStatus == other.continuousBackupsStatus &&
        pointInTimeRecoveryDescription == other.pointInTimeRecoveryDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, continuousBackupsStatus.hashCode);
    _$hash = $jc(_$hash, pointInTimeRecoveryDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ContinuousBackupsDescriptionBuilder
    implements
        Builder<ContinuousBackupsDescription,
            ContinuousBackupsDescriptionBuilder> {
  _$ContinuousBackupsDescription? _$v;

  _i2.ContinuousBackupsStatus? _continuousBackupsStatus;
  _i2.ContinuousBackupsStatus? get continuousBackupsStatus =>
      _$this._continuousBackupsStatus;
  set continuousBackupsStatus(
          _i2.ContinuousBackupsStatus? continuousBackupsStatus) =>
      _$this._continuousBackupsStatus = continuousBackupsStatus;

  _i3.PointInTimeRecoveryDescriptionBuilder? _pointInTimeRecoveryDescription;
  _i3.PointInTimeRecoveryDescriptionBuilder
      get pointInTimeRecoveryDescription =>
          _$this._pointInTimeRecoveryDescription ??=
              new _i3.PointInTimeRecoveryDescriptionBuilder();
  set pointInTimeRecoveryDescription(
          _i3.PointInTimeRecoveryDescriptionBuilder?
              pointInTimeRecoveryDescription) =>
      _$this._pointInTimeRecoveryDescription = pointInTimeRecoveryDescription;

  ContinuousBackupsDescriptionBuilder();

  ContinuousBackupsDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _continuousBackupsStatus = $v.continuousBackupsStatus;
      _pointInTimeRecoveryDescription =
          $v.pointInTimeRecoveryDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContinuousBackupsDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContinuousBackupsDescription;
  }

  @override
  void update(void Function(ContinuousBackupsDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContinuousBackupsDescription build() => _build();

  _$ContinuousBackupsDescription _build() {
    _$ContinuousBackupsDescription _$result;
    try {
      _$result = _$v ??
          new _$ContinuousBackupsDescription._(
              continuousBackupsStatus: BuiltValueNullFieldError.checkNotNull(
                  continuousBackupsStatus,
                  r'ContinuousBackupsDescription',
                  'continuousBackupsStatus'),
              pointInTimeRecoveryDescription:
                  _pointInTimeRecoveryDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pointInTimeRecoveryDescription';
        _pointInTimeRecoveryDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContinuousBackupsDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
