// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.delete_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'delete_request.g.dart';

/// Represents a request to perform a `DeleteItem` operation on an item.
abstract class DeleteRequest
    with _i1.AWSEquatable<DeleteRequest>
    implements Built<DeleteRequest, DeleteRequestBuilder> {
  /// Represents a request to perform a `DeleteItem` operation on an item.
  factory DeleteRequest({required Map<String, _i2.AttributeValue> key}) {
    return _$DeleteRequest._(key: _i3.BuiltMap(key));
  }

  /// Represents a request to perform a `DeleteItem` operation on an item.
  factory DeleteRequest.build([void Function(DeleteRequestBuilder) updates]) =
      _$DeleteRequest;

  const DeleteRequest._();

  static const List<_i4.SmithySerializer<DeleteRequest>> serializers = [
    DeleteRequestAwsJson10Serializer()
  ];

  /// A map of attribute name to attribute values, representing the primary key of the item to delete. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema.
  _i3.BuiltMap<String, _i2.AttributeValue> get key;
  @override
  List<Object?> get props => [key];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRequest')
      ..add(
        'key',
        key,
      );
    return helper.toString();
  }
}

class DeleteRequestAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<DeleteRequest> {
  const DeleteRequestAwsJson10Serializer() : super('DeleteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRequest,
        _$DeleteRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteRequest(:key) = object;
    result$.addAll([
      'Key',
      serializers.serialize(
        key,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(_i2.AttributeValue),
          ],
        ),
      ),
    ]);
    return result$;
  }
}
