// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_available_configuration_recorder_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoAvailableConfigurationRecorderException
    extends NoAvailableConfigurationRecorderException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoAvailableConfigurationRecorderException(
          [void Function(NoAvailableConfigurationRecorderExceptionBuilder)?
              updates]) =>
      (new NoAvailableConfigurationRecorderExceptionBuilder()..update(updates))
          ._build();

  _$NoAvailableConfigurationRecorderException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoAvailableConfigurationRecorderException rebuild(
          void Function(NoAvailableConfigurationRecorderExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoAvailableConfigurationRecorderExceptionBuilder toBuilder() =>
      new NoAvailableConfigurationRecorderExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoAvailableConfigurationRecorderException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoAvailableConfigurationRecorderExceptionBuilder
    implements
        Builder<NoAvailableConfigurationRecorderException,
            NoAvailableConfigurationRecorderExceptionBuilder> {
  _$NoAvailableConfigurationRecorderException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoAvailableConfigurationRecorderExceptionBuilder();

  NoAvailableConfigurationRecorderExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoAvailableConfigurationRecorderException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoAvailableConfigurationRecorderException;
  }

  @override
  void update(
      void Function(NoAvailableConfigurationRecorderExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  NoAvailableConfigurationRecorderException build() => _build();

  _$NoAvailableConfigurationRecorderException _build() {
    final _$result = _$v ??
        new _$NoAvailableConfigurationRecorderException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
