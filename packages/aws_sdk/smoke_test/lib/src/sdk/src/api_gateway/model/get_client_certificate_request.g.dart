// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_certificate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetClientCertificateRequest extends GetClientCertificateRequest {
  @override
  final String clientCertificateId;

  factory _$GetClientCertificateRequest(
          [void Function(GetClientCertificateRequestBuilder)? updates]) =>
      (new GetClientCertificateRequestBuilder()..update(updates))._build();

  _$GetClientCertificateRequest._({required this.clientCertificateId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientCertificateId,
        r'GetClientCertificateRequest', 'clientCertificateId');
  }

  @override
  GetClientCertificateRequest rebuild(
          void Function(GetClientCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificateRequestBuilder toBuilder() =>
      new GetClientCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificateRequest &&
        clientCertificateId == other.clientCertificateId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientCertificateId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetClientCertificateRequestBuilder
    implements
        Builder<GetClientCertificateRequest,
            GetClientCertificateRequestBuilder> {
  _$GetClientCertificateRequest? _$v;

  String? _clientCertificateId;
  String? get clientCertificateId => _$this._clientCertificateId;
  set clientCertificateId(String? clientCertificateId) =>
      _$this._clientCertificateId = clientCertificateId;

  GetClientCertificateRequestBuilder();

  GetClientCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientCertificateId = $v.clientCertificateId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetClientCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificateRequest;
  }

  @override
  void update(void Function(GetClientCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificateRequest build() => _build();

  _$GetClientCertificateRequest _build() {
    final _$result = _$v ??
        new _$GetClientCertificateRequest._(
            clientCertificateId: BuiltValueNullFieldError.checkNotNull(
                clientCertificateId,
                r'GetClientCertificateRequest',
                'clientCertificateId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetClientCertificateRequestPayload
    extends GetClientCertificateRequestPayload {
  factory _$GetClientCertificateRequestPayload(
          [void Function(GetClientCertificateRequestPayloadBuilder)?
              updates]) =>
      (new GetClientCertificateRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetClientCertificateRequestPayload._() : super._();

  @override
  GetClientCertificateRequestPayload rebuild(
          void Function(GetClientCertificateRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificateRequestPayloadBuilder toBuilder() =>
      new GetClientCertificateRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificateRequestPayload;
  }

  @override
  int get hashCode {
    return 624219221;
  }
}

class GetClientCertificateRequestPayloadBuilder
    implements
        Builder<GetClientCertificateRequestPayload,
            GetClientCertificateRequestPayloadBuilder> {
  _$GetClientCertificateRequestPayload? _$v;

  GetClientCertificateRequestPayloadBuilder();

  @override
  void replace(GetClientCertificateRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificateRequestPayload;
  }

  @override
  void update(
      void Function(GetClientCertificateRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificateRequestPayload build() => _build();

  _$GetClientCertificateRequestPayload _build() {
    final _$result = _$v ?? new _$GetClientCertificateRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
