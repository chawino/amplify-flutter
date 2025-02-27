// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unrecognized_public_key_encoding_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnrecognizedPublicKeyEncodingException
    extends UnrecognizedPublicKeyEncodingException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UnrecognizedPublicKeyEncodingException(
          [void Function(UnrecognizedPublicKeyEncodingExceptionBuilder)?
              updates]) =>
      (new UnrecognizedPublicKeyEncodingExceptionBuilder()..update(updates))
          ._build();

  _$UnrecognizedPublicKeyEncodingException._({this.message, this.headers})
      : super._();

  @override
  UnrecognizedPublicKeyEncodingException rebuild(
          void Function(UnrecognizedPublicKeyEncodingExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnrecognizedPublicKeyEncodingExceptionBuilder toBuilder() =>
      new UnrecognizedPublicKeyEncodingExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnrecognizedPublicKeyEncodingException &&
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

class UnrecognizedPublicKeyEncodingExceptionBuilder
    implements
        Builder<UnrecognizedPublicKeyEncodingException,
            UnrecognizedPublicKeyEncodingExceptionBuilder> {
  _$UnrecognizedPublicKeyEncodingException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnrecognizedPublicKeyEncodingExceptionBuilder();

  UnrecognizedPublicKeyEncodingExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnrecognizedPublicKeyEncodingException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnrecognizedPublicKeyEncodingException;
  }

  @override
  void update(
      void Function(UnrecognizedPublicKeyEncodingExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnrecognizedPublicKeyEncodingException build() => _build();

  _$UnrecognizedPublicKeyEncodingException _build() {
    final _$result = _$v ??
        new _$UnrecognizedPublicKeyEncodingException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
