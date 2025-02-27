// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'too_many_tags_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TooManyTagsException extends TooManyTagsException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TooManyTagsException(
          [void Function(TooManyTagsExceptionBuilder)? updates]) =>
      (new TooManyTagsExceptionBuilder()..update(updates))._build();

  _$TooManyTagsException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  TooManyTagsException rebuild(
          void Function(TooManyTagsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TooManyTagsExceptionBuilder toBuilder() =>
      new TooManyTagsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyTagsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TooManyTagsExceptionBuilder
    implements Builder<TooManyTagsException, TooManyTagsExceptionBuilder> {
  _$TooManyTagsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TooManyTagsExceptionBuilder();

  TooManyTagsExceptionBuilder get _$this {
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
  void replace(TooManyTagsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TooManyTagsException;
  }

  @override
  void update(void Function(TooManyTagsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyTagsException build() => _build();

  _$TooManyTagsException _build() {
    final _$result = _$v ??
        new _$TooManyTagsException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
