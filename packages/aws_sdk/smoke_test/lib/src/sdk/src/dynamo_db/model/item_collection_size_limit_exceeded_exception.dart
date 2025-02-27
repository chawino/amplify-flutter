// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.item_collection_size_limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'item_collection_size_limit_exceeded_exception.g.dart';

/// An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.
abstract class ItemCollectionSizeLimitExceededException
    with
        _i1.AWSEquatable<ItemCollectionSizeLimitExceededException>
    implements
        Built<ItemCollectionSizeLimitExceededException,
            ItemCollectionSizeLimitExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.
  factory ItemCollectionSizeLimitExceededException({String? message}) {
    return _$ItemCollectionSizeLimitExceededException._(message: message);
  }

  /// An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.
  factory ItemCollectionSizeLimitExceededException.build(
      [void Function(ItemCollectionSizeLimitExceededExceptionBuilder)
          updates]) = _$ItemCollectionSizeLimitExceededException;

  const ItemCollectionSizeLimitExceededException._();

  /// Constructs a [ItemCollectionSizeLimitExceededException] from a [payload] and [response].
  factory ItemCollectionSizeLimitExceededException.fromResponse(
    ItemCollectionSizeLimitExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<ItemCollectionSizeLimitExceededException>>
      serializers = [
    ItemCollectionSizeLimitExceededExceptionAwsJson10Serializer()
  ];

  /// The total size of an item collection has exceeded the maximum limit of 10 gigabytes.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ItemCollectionSizeLimitExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ItemCollectionSizeLimitExceededException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class ItemCollectionSizeLimitExceededExceptionAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<ItemCollectionSizeLimitExceededException> {
  const ItemCollectionSizeLimitExceededExceptionAwsJson10Serializer()
      : super('ItemCollectionSizeLimitExceededException');

  @override
  Iterable<Type> get types => const [
        ItemCollectionSizeLimitExceededException,
        _$ItemCollectionSizeLimitExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ItemCollectionSizeLimitExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemCollectionSizeLimitExceededExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ItemCollectionSizeLimitExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ItemCollectionSizeLimitExceededException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
