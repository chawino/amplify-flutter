// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.entity_temporarily_unmodifiable_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'entity_temporarily_unmodifiable_exception.g.dart';

/// The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.
abstract class EntityTemporarilyUnmodifiableException
    with
        _i1.AWSEquatable<EntityTemporarilyUnmodifiableException>
    implements
        Built<EntityTemporarilyUnmodifiableException,
            EntityTemporarilyUnmodifiableExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.
  factory EntityTemporarilyUnmodifiableException({String? message}) {
    return _$EntityTemporarilyUnmodifiableException._(message: message);
  }

  /// The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.
  factory EntityTemporarilyUnmodifiableException.build(
      [void Function(EntityTemporarilyUnmodifiableExceptionBuilder)
          updates]) = _$EntityTemporarilyUnmodifiableException;

  const EntityTemporarilyUnmodifiableException._();

  /// Constructs a [EntityTemporarilyUnmodifiableException] from a [payload] and [response].
  factory EntityTemporarilyUnmodifiableException.fromResponse(
    EntityTemporarilyUnmodifiableException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<EntityTemporarilyUnmodifiableException>>
      serializers = [
    EntityTemporarilyUnmodifiableExceptionAwsQuerySerializer()
  ];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'EntityTemporarilyUnmodifiableException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
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
        newBuiltValueToStringHelper('EntityTemporarilyUnmodifiableException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class EntityTemporarilyUnmodifiableExceptionAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<EntityTemporarilyUnmodifiableException> {
  const EntityTemporarilyUnmodifiableExceptionAwsQuerySerializer()
      : super('EntityTemporarilyUnmodifiableException');

  @override
  Iterable<Type> get types => const [
        EntityTemporarilyUnmodifiableException,
        _$EntityTemporarilyUnmodifiableException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EntityTemporarilyUnmodifiableException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityTemporarilyUnmodifiableExceptionBuilder();
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
    EntityTemporarilyUnmodifiableException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EntityTemporarilyUnmodifiableExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EntityTemporarilyUnmodifiableException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
