// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_method_response_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutMethodResponseRequest extends PutMethodResponseRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;
  @override
  final String statusCode;
  @override
  final _i3.BuiltMap<String, bool>? responseParameters;
  @override
  final _i3.BuiltMap<String, String>? responseModels;

  factory _$PutMethodResponseRequest(
          [void Function(PutMethodResponseRequestBuilder)? updates]) =>
      (new PutMethodResponseRequestBuilder()..update(updates))._build();

  _$PutMethodResponseRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod,
      required this.statusCode,
      this.responseParameters,
      this.responseModels})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutMethodResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutMethodResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'PutMethodResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'PutMethodResponseRequest', 'statusCode');
  }

  @override
  PutMethodResponseRequest rebuild(
          void Function(PutMethodResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutMethodResponseRequestBuilder toBuilder() =>
      new PutMethodResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutMethodResponseRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod &&
        statusCode == other.statusCode &&
        responseParameters == other.responseParameters &&
        responseModels == other.responseModels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseModels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutMethodResponseRequestBuilder
    implements
        Builder<PutMethodResponseRequest, PutMethodResponseRequestBuilder> {
  _$PutMethodResponseRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  _i3.MapBuilder<String, bool>? _responseParameters;
  _i3.MapBuilder<String, bool> get responseParameters =>
      _$this._responseParameters ??= new _i3.MapBuilder<String, bool>();
  set responseParameters(_i3.MapBuilder<String, bool>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i3.MapBuilder<String, String>? _responseModels;
  _i3.MapBuilder<String, String> get responseModels =>
      _$this._responseModels ??= new _i3.MapBuilder<String, String>();
  set responseModels(_i3.MapBuilder<String, String>? responseModels) =>
      _$this._responseModels = responseModels;

  PutMethodResponseRequestBuilder();

  PutMethodResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _statusCode = $v.statusCode;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseModels = $v.responseModels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutMethodResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutMethodResponseRequest;
  }

  @override
  void update(void Function(PutMethodResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutMethodResponseRequest build() => _build();

  _$PutMethodResponseRequest _build() {
    _$PutMethodResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$PutMethodResponseRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutMethodResponseRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutMethodResponseRequest', 'resourceId'),
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'PutMethodResponseRequest', 'httpMethod'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'PutMethodResponseRequest', 'statusCode'),
              responseParameters: _responseParameters?.build(),
              responseModels: _responseModels?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseModels';
        _responseModels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutMethodResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PutMethodResponseRequestPayload
    extends PutMethodResponseRequestPayload {
  @override
  final _i3.BuiltMap<String, String>? responseModels;
  @override
  final _i3.BuiltMap<String, bool>? responseParameters;

  factory _$PutMethodResponseRequestPayload(
          [void Function(PutMethodResponseRequestPayloadBuilder)? updates]) =>
      (new PutMethodResponseRequestPayloadBuilder()..update(updates))._build();

  _$PutMethodResponseRequestPayload._(
      {this.responseModels, this.responseParameters})
      : super._();

  @override
  PutMethodResponseRequestPayload rebuild(
          void Function(PutMethodResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutMethodResponseRequestPayloadBuilder toBuilder() =>
      new PutMethodResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutMethodResponseRequestPayload &&
        responseModels == other.responseModels &&
        responseParameters == other.responseParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseModels.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutMethodResponseRequestPayloadBuilder
    implements
        Builder<PutMethodResponseRequestPayload,
            PutMethodResponseRequestPayloadBuilder> {
  _$PutMethodResponseRequestPayload? _$v;

  _i3.MapBuilder<String, String>? _responseModels;
  _i3.MapBuilder<String, String> get responseModels =>
      _$this._responseModels ??= new _i3.MapBuilder<String, String>();
  set responseModels(_i3.MapBuilder<String, String>? responseModels) =>
      _$this._responseModels = responseModels;

  _i3.MapBuilder<String, bool>? _responseParameters;
  _i3.MapBuilder<String, bool> get responseParameters =>
      _$this._responseParameters ??= new _i3.MapBuilder<String, bool>();
  set responseParameters(_i3.MapBuilder<String, bool>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  PutMethodResponseRequestPayloadBuilder();

  PutMethodResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseModels = $v.responseModels?.toBuilder();
      _responseParameters = $v.responseParameters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutMethodResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutMethodResponseRequestPayload;
  }

  @override
  void update(void Function(PutMethodResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutMethodResponseRequestPayload build() => _build();

  _$PutMethodResponseRequestPayload _build() {
    _$PutMethodResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$PutMethodResponseRequestPayload._(
              responseModels: _responseModels?.build(),
              responseParameters: _responseParameters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseModels';
        _responseModels?.build();
        _$failedField = 'responseParameters';
        _responseParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutMethodResponseRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
