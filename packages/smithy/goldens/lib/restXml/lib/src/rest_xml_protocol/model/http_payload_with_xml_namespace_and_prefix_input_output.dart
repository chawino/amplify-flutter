// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.model.http_payload_with_xml_namespace_and_prefix_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_namespace_and_prefix.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_with_xml_namespace_and_prefix_input_output.g.dart';

abstract class HttpPayloadWithXmlNamespaceAndPrefixInputOutput
    with
        _i1.HttpInput<_i2.PayloadWithXmlNamespaceAndPrefix>,
        _i3.AWSEquatable<HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
    implements
        Built<HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
            HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder>,
        _i1.HasPayload<_i2.PayloadWithXmlNamespaceAndPrefix> {
  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput(
      {_i2.PayloadWithXmlNamespaceAndPrefix? nested}) {
    return _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._(nested: nested);
  }

  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build(
      [void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)
          updates]) = _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput;

  const HttpPayloadWithXmlNamespaceAndPrefixInputOutput._();

  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromRequest(
    _i2.PayloadWithXmlNamespaceAndPrefix? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  /// Constructs a [HttpPayloadWithXmlNamespaceAndPrefixInputOutput] from a [payload] and [response].
  factory HttpPayloadWithXmlNamespaceAndPrefixInputOutput.fromResponse(
    _i2.PayloadWithXmlNamespaceAndPrefix? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadWithXmlNamespaceAndPrefixInputOutput.build((b) {
        if (payload != null) {
          b.nested.replace(payload);
        }
      });

  static const List<_i1.SmithySerializer<_i2.PayloadWithXmlNamespaceAndPrefix?>>
      serializers = [
    HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer()
  ];

  _i2.PayloadWithXmlNamespaceAndPrefix? get nested;
  @override
  _i2.PayloadWithXmlNamespaceAndPrefix? getPayload() =>
      nested ?? _i2.PayloadWithXmlNamespaceAndPrefix();
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpPayloadWithXmlNamespaceAndPrefixInputOutput')
      ..add(
        'nested',
        nested,
      );
    return helper.toString();
  }
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer
    extends _i1
        .StructuredSmithySerializer<_i2.PayloadWithXmlNamespaceAndPrefix> {
  const HttpPayloadWithXmlNamespaceAndPrefixInputOutputRestXmlSerializer()
      : super('HttpPayloadWithXmlNamespaceAndPrefixInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
        _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.PayloadWithXmlNamespaceAndPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.PayloadWithXmlNamespaceAndPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
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
    _i2.PayloadWithXmlNamespaceAndPrefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PayloadWithXmlNamespaceAndPrefix',
        _i1.XmlNamespace(
          'http://foo.com',
          'baz',
        ),
      )
    ];
    final _i2.PayloadWithXmlNamespaceAndPrefix(:name) = object;
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
