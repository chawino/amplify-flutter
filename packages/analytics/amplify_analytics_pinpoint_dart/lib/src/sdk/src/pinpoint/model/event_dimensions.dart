// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.event_dimensions; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/attribute_dimension.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/metric_dimension.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/set_dimension.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;

part 'event_dimensions.g.dart';

/// Specifies the dimensions for an event filter that determines when a campaign is sent or a journey activity is performed.
abstract class EventDimensions
    with _i1.AWSEquatable<EventDimensions>
    implements Built<EventDimensions, EventDimensionsBuilder> {
  /// Specifies the dimensions for an event filter that determines when a campaign is sent or a journey activity is performed.
  factory EventDimensions({
    Map<String, _i2.AttributeDimension>? attributes,
    _i3.SetDimension? eventType,
    Map<String, _i4.MetricDimension>? metrics,
  }) {
    return _$EventDimensions._(
      attributes: attributes == null ? null : _i5.BuiltMap(attributes),
      eventType: eventType,
      metrics: metrics == null ? null : _i5.BuiltMap(metrics),
    );
  }

  /// Specifies the dimensions for an event filter that determines when a campaign is sent or a journey activity is performed.
  factory EventDimensions.build(
      [void Function(EventDimensionsBuilder) updates]) = _$EventDimensions;

  const EventDimensions._();

  static const List<_i6.SmithySerializer<EventDimensions>> serializers = [
    EventDimensionsRestJson1Serializer()
  ];

  /// One or more custom attributes that your application reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create an event filter.
  _i5.BuiltMap<String, _i2.AttributeDimension>? get attributes;

  /// The name of the event that causes the campaign to be sent or the journey activity to be performed. This can be a standard event that Amazon Pinpoint generates, such as _email.delivered. For campaigns, this can also be a custom event that's specific to your application. For information about standard events, see [Streaming Amazon Pinpoint Events](https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams.html) in the _Amazon Pinpoint Developer Guide_.
  _i3.SetDimension? get eventType;

  /// One or more custom metrics that your application reports to Amazon Pinpoint. You can use these metrics as selection criteria when you create an event filter.
  _i5.BuiltMap<String, _i4.MetricDimension>? get metrics;
  @override
  List<Object?> get props => [
        attributes,
        eventType,
        metrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventDimensions')
      ..add(
        'attributes',
        attributes,
      )
      ..add(
        'eventType',
        eventType,
      )
      ..add(
        'metrics',
        metrics,
      );
    return helper.toString();
  }
}

class EventDimensionsRestJson1Serializer
    extends _i6.StructuredSmithySerializer<EventDimensions> {
  const EventDimensionsRestJson1Serializer() : super('EventDimensions');

  @override
  Iterable<Type> get types => const [
        EventDimensions,
        _$EventDimensions,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EventDimensions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventDimensionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Attributes':
          result.attributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeDimension),
              ],
            ),
          ) as _i5.BuiltMap<String, _i2.AttributeDimension>));
        case 'EventType':
          result.eventType.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.SetDimension),
          ) as _i3.SetDimension));
        case 'Metrics':
          result.metrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i4.MetricDimension),
              ],
            ),
          ) as _i5.BuiltMap<String, _i4.MetricDimension>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EventDimensions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EventDimensions(:attributes, :eventType, :metrics) = object;
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(serializers.serialize(
          attributes,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeDimension),
            ],
          ),
        ));
    }
    if (eventType != null) {
      result$
        ..add('EventType')
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType(_i3.SetDimension),
        ));
    }
    if (metrics != null) {
      result$
        ..add('Metrics')
        ..add(serializers.serialize(
          metrics,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i4.MetricDimension),
            ],
          ),
        ));
    }
    return result$;
  }
}
