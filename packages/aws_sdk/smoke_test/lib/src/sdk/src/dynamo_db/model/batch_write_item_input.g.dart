// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_write_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchWriteItemInput extends BatchWriteItemInput {
  @override
  final _i6.BuiltListMultimap<String, _i3.WriteRequest> requestItems;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i5.ReturnItemCollectionMetrics? returnItemCollectionMetrics;

  factory _$BatchWriteItemInput(
          [void Function(BatchWriteItemInputBuilder)? updates]) =>
      (new BatchWriteItemInputBuilder()..update(updates))._build();

  _$BatchWriteItemInput._(
      {required this.requestItems,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestItems, r'BatchWriteItemInput', 'requestItems');
  }

  @override
  BatchWriteItemInput rebuild(
          void Function(BatchWriteItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchWriteItemInputBuilder toBuilder() =>
      new BatchWriteItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchWriteItemInput &&
        requestItems == other.requestItems &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestItems.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchWriteItemInputBuilder
    implements Builder<BatchWriteItemInput, BatchWriteItemInputBuilder> {
  _$BatchWriteItemInput? _$v;

  _i6.ListMultimapBuilder<String, _i3.WriteRequest>? _requestItems;
  _i6.ListMultimapBuilder<String, _i3.WriteRequest> get requestItems =>
      _$this._requestItems ??=
          new _i6.ListMultimapBuilder<String, _i3.WriteRequest>();
  set requestItems(
          _i6.ListMultimapBuilder<String, _i3.WriteRequest>? requestItems) =>
      _$this._requestItems = requestItems;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i5.ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  _i5.ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          _i5.ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  BatchWriteItemInputBuilder();

  BatchWriteItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestItems = $v.requestItems.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchWriteItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchWriteItemInput;
  }

  @override
  void update(void Function(BatchWriteItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchWriteItemInput build() => _build();

  _$BatchWriteItemInput _build() {
    _$BatchWriteItemInput _$result;
    try {
      _$result = _$v ??
          new _$BatchWriteItemInput._(
              requestItems: requestItems.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestItems';
        requestItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchWriteItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
