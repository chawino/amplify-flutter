// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_deployment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeploymentRequest extends GetDeploymentRequest {
  @override
  final String restApiId;
  @override
  final String deploymentId;
  @override
  final _i3.BuiltList<String>? embed;

  factory _$GetDeploymentRequest(
          [void Function(GetDeploymentRequestBuilder)? updates]) =>
      (new GetDeploymentRequestBuilder()..update(updates))._build();

  _$GetDeploymentRequest._(
      {required this.restApiId, required this.deploymentId, this.embed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDeploymentRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'GetDeploymentRequest', 'deploymentId');
  }

  @override
  GetDeploymentRequest rebuild(
          void Function(GetDeploymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentRequestBuilder toBuilder() =>
      new GetDeploymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentRequest &&
        restApiId == other.restApiId &&
        deploymentId == other.deploymentId &&
        embed == other.embed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, embed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDeploymentRequestBuilder
    implements Builder<GetDeploymentRequest, GetDeploymentRequestBuilder> {
  _$GetDeploymentRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  GetDeploymentRequestBuilder();

  GetDeploymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _deploymentId = $v.deploymentId;
      _embed = $v.embed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeploymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentRequest;
  }

  @override
  void update(void Function(GetDeploymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentRequest build() => _build();

  _$GetDeploymentRequest _build() {
    _$GetDeploymentRequest _$result;
    try {
      _$result = _$v ??
          new _$GetDeploymentRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetDeploymentRequest', 'restApiId'),
              deploymentId: BuiltValueNullFieldError.checkNotNull(
                  deploymentId, r'GetDeploymentRequest', 'deploymentId'),
              embed: _embed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'embed';
        _embed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDeploymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetDeploymentRequestPayload extends GetDeploymentRequestPayload {
  factory _$GetDeploymentRequestPayload(
          [void Function(GetDeploymentRequestPayloadBuilder)? updates]) =>
      (new GetDeploymentRequestPayloadBuilder()..update(updates))._build();

  _$GetDeploymentRequestPayload._() : super._();

  @override
  GetDeploymentRequestPayload rebuild(
          void Function(GetDeploymentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentRequestPayloadBuilder toBuilder() =>
      new GetDeploymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentRequestPayload;
  }

  @override
  int get hashCode {
    return 402799697;
  }
}

class GetDeploymentRequestPayloadBuilder
    implements
        Builder<GetDeploymentRequestPayload,
            GetDeploymentRequestPayloadBuilder> {
  _$GetDeploymentRequestPayload? _$v;

  GetDeploymentRequestPayloadBuilder();

  @override
  void replace(GetDeploymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentRequestPayload;
  }

  @override
  void update(void Function(GetDeploymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentRequestPayload build() => _build();

  _$GetDeploymentRequestPayload _build() {
    final _$result = _$v ?? new _$GetDeploymentRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
