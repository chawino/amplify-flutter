// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failed_delete_remediation_exceptions_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedDeleteRemediationExceptionsBatch
    extends FailedDeleteRemediationExceptionsBatch {
  @override
  final String? failureMessage;
  @override
  final _i3.BuiltList<_i2.RemediationExceptionResourceKey>? failedItems;

  factory _$FailedDeleteRemediationExceptionsBatch(
          [void Function(FailedDeleteRemediationExceptionsBatchBuilder)?
              updates]) =>
      (new FailedDeleteRemediationExceptionsBatchBuilder()..update(updates))
          ._build();

  _$FailedDeleteRemediationExceptionsBatch._(
      {this.failureMessage, this.failedItems})
      : super._();

  @override
  FailedDeleteRemediationExceptionsBatch rebuild(
          void Function(FailedDeleteRemediationExceptionsBatchBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailedDeleteRemediationExceptionsBatchBuilder toBuilder() =>
      new FailedDeleteRemediationExceptionsBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailedDeleteRemediationExceptionsBatch &&
        failureMessage == other.failureMessage &&
        failedItems == other.failedItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, failedItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FailedDeleteRemediationExceptionsBatchBuilder
    implements
        Builder<FailedDeleteRemediationExceptionsBatch,
            FailedDeleteRemediationExceptionsBatchBuilder> {
  _$FailedDeleteRemediationExceptionsBatch? _$v;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i3.ListBuilder<_i2.RemediationExceptionResourceKey>? _failedItems;
  _i3.ListBuilder<_i2.RemediationExceptionResourceKey> get failedItems =>
      _$this._failedItems ??=
          new _i3.ListBuilder<_i2.RemediationExceptionResourceKey>();
  set failedItems(
          _i3.ListBuilder<_i2.RemediationExceptionResourceKey>? failedItems) =>
      _$this._failedItems = failedItems;

  FailedDeleteRemediationExceptionsBatchBuilder();

  FailedDeleteRemediationExceptionsBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failureMessage = $v.failureMessage;
      _failedItems = $v.failedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailedDeleteRemediationExceptionsBatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailedDeleteRemediationExceptionsBatch;
  }

  @override
  void update(
      void Function(FailedDeleteRemediationExceptionsBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FailedDeleteRemediationExceptionsBatch build() => _build();

  _$FailedDeleteRemediationExceptionsBatch _build() {
    _$FailedDeleteRemediationExceptionsBatch _$result;
    try {
      _$result = _$v ??
          new _$FailedDeleteRemediationExceptionsBatch._(
              failureMessage: failureMessage,
              failedItems: _failedItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedItems';
        _failedItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FailedDeleteRemediationExceptionsBatch',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
