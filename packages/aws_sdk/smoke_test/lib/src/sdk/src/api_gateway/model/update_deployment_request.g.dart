// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_deployment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeploymentRequest extends UpdateDeploymentRequest {
  @override
  final String restApiId;
  @override
  final String deploymentId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDeploymentRequest(
          [void Function(UpdateDeploymentRequestBuilder)? updates]) =>
      (new UpdateDeploymentRequestBuilder()..update(updates))._build();

  _$UpdateDeploymentRequest._(
      {required this.restApiId,
      required this.deploymentId,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateDeploymentRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        deploymentId, r'UpdateDeploymentRequest', 'deploymentId');
  }

  @override
  UpdateDeploymentRequest rebuild(
          void Function(UpdateDeploymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDeploymentRequestBuilder toBuilder() =>
      new UpdateDeploymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeploymentRequest &&
        restApiId == other.restApiId &&
        deploymentId == other.deploymentId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, deploymentId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDeploymentRequestBuilder
    implements
        Builder<UpdateDeploymentRequest, UpdateDeploymentRequestBuilder> {
  _$UpdateDeploymentRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _deploymentId;
  String? get deploymentId => _$this._deploymentId;
  set deploymentId(String? deploymentId) => _$this._deploymentId = deploymentId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDeploymentRequestBuilder();

  UpdateDeploymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _deploymentId = $v.deploymentId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeploymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDeploymentRequest;
  }

  @override
  void update(void Function(UpdateDeploymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeploymentRequest build() => _build();

  _$UpdateDeploymentRequest _build() {
    _$UpdateDeploymentRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateDeploymentRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateDeploymentRequest', 'restApiId'),
              deploymentId: BuiltValueNullFieldError.checkNotNull(
                  deploymentId, r'UpdateDeploymentRequest', 'deploymentId'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDeploymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateDeploymentRequestPayload extends UpdateDeploymentRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateDeploymentRequestPayload(
          [void Function(UpdateDeploymentRequestPayloadBuilder)? updates]) =>
      (new UpdateDeploymentRequestPayloadBuilder()..update(updates))._build();

  _$UpdateDeploymentRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateDeploymentRequestPayload rebuild(
          void Function(UpdateDeploymentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDeploymentRequestPayloadBuilder toBuilder() =>
      new UpdateDeploymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeploymentRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateDeploymentRequestPayloadBuilder
    implements
        Builder<UpdateDeploymentRequestPayload,
            UpdateDeploymentRequestPayloadBuilder> {
  _$UpdateDeploymentRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateDeploymentRequestPayloadBuilder();

  UpdateDeploymentRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeploymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateDeploymentRequestPayload;
  }

  @override
  void update(void Function(UpdateDeploymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeploymentRequestPayload build() => _build();

  _$UpdateDeploymentRequestPayload _build() {
    _$UpdateDeploymentRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateDeploymentRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateDeploymentRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
