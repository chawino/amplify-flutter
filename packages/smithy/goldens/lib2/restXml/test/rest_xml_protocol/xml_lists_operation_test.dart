// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/foo_enum.dart' as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/integer_enum.dart'
    as _i8;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/structure_list_member.dart'
    as _i9;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_lists_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_lists_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlLists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlLists',
          documentation: 'Tests for XML list serialization',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlListsInputOutput>\n    <stringList>\n        <member>foo</member>\n        <member>bar</member>\n    </stringList>\n    <stringSet>\n        <member>foo</member>\n        <member>bar</member>\n    </stringSet>\n    <integerList>\n        <member>1</member>\n        <member>2</member>\n    </integerList>\n    <booleanList>\n        <member>true</member>\n        <member>false</member>\n    </booleanList>\n    <timestampList>\n        <member>2014-04-29T18:30:38Z</member>\n        <member>2014-04-29T18:30:38Z</member>\n    </timestampList>\n    <enumList>\n        <member>Foo</member>\n        <member>0</member>\n    </enumList>\n    <intEnumList>\n        <member>1</member>\n        <member>2</member>\n    </intEnumList>\n    <nestedStringList>\n        <member>\n            <member>foo</member>\n            <member>bar</member>\n        </member>\n        <member>\n            <member>baz</member>\n            <member>qux</member>\n        </member>\n    </nestedStringList>\n    <renamed>\n        <item>foo</item>\n        <item>bar</item>\n    </renamed>\n    <flattenedList>hi</flattenedList>\n    <flattenedList>bye</flattenedList>\n    <customName>yep</customName>\n    <customName>nope</customName>\n    <myStructureList>\n        <item>\n            <value>1</value>\n            <other>2</other>\n        </item>\n        <item>\n            <value>3</value>\n            <other>4</other>\n        </item>\n    </myStructureList>\n    <flattenedStructureList>\n        <value>5</value>\n        <other>6</other>\n    </flattenedStructureList>\n    <flattenedStructureList>\n        <value>7</value>\n        <other>8</other>\n    </flattenedStructureList>\n</XmlListsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'stringList': [
              'foo',
              'bar',
            ],
            'stringSet': [
              'foo',
              'bar',
            ],
            'integerList': [
              1,
              2,
            ],
            'booleanList': [
              true,
              false,
            ],
            'timestampList': [
              1398796238,
              1398796238,
            ],
            'enumList': [
              'Foo',
              '0',
            ],
            'intEnumList': [
              1,
              2,
            ],
            'nestedStringList': [
              [
                'foo',
                'bar',
              ],
              [
                'baz',
                'qux',
              ],
            ],
            'renamedListMembers': [
              'foo',
              'bar',
            ],
            'flattenedList': [
              'hi',
              'bye',
            ],
            'flattenedList2': [
              'yep',
              'nope',
            ],
            'structureList': [
              {
                'a': '1',
                'b': '2',
              },
              {
                'a': '3',
                'b': '4',
              },
            ],
            'flattenedStructureList': [
              {
                'a': '5',
                'b': '6',
              },
              {
                'a': '7',
                'b': '8',
              },
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/XmlLists',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          XmlListsInputOutputRestXmlSerializer(),
          StructureListMemberRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'XmlLists (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlLists',
          documentation: 'Tests for XML list serialization',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlListsInputOutput>\n    <stringList>\n        <member>foo</member>\n        <member>bar</member>\n    </stringList>\n    <stringSet>\n        <member>foo</member>\n        <member>bar</member>\n    </stringSet>\n    <integerList>\n        <member>1</member>\n        <member>2</member>\n    </integerList>\n    <booleanList>\n        <member>true</member>\n        <member>false</member>\n    </booleanList>\n    <timestampList>\n        <member>2014-04-29T18:30:38Z</member>\n        <member>2014-04-29T18:30:38Z</member>\n    </timestampList>\n    <enumList>\n        <member>Foo</member>\n        <member>0</member>\n    </enumList>\n    <intEnumList>\n        <member>1</member>\n        <member>2</member>\n    </intEnumList>\n    <nestedStringList>\n        <member>\n            <member>foo</member>\n            <member>bar</member>\n        </member>\n        <member>\n            <member>baz</member>\n            <member>qux</member>\n        </member>\n    </nestedStringList>\n    <renamed>\n        <item>foo</item>\n        <item>bar</item>\n    </renamed>\n    <flattenedList>hi</flattenedList>\n    <flattenedList>bye</flattenedList>\n    <customName>yep</customName>\n    <customName>nope</customName>\n    <flattenedListWithMemberNamespace xmlns="https://xml-member.example.com">a</flattenedListWithMemberNamespace>\n    <flattenedListWithMemberNamespace xmlns="https://xml-member.example.com">b</flattenedListWithMemberNamespace>\n    <flattenedListWithNamespace>a</flattenedListWithNamespace>\n    <flattenedListWithNamespace>b</flattenedListWithNamespace>\n    <myStructureList>\n        <item>\n            <value>1</value>\n            <other>2</other>\n        </item>\n        <item>\n            <value>3</value>\n            <other>4</other>\n        </item>\n    </myStructureList>\n    <flattenedStructureList>\n        <value>5</value>\n        <other>6</other>\n    </flattenedStructureList>\n    <flattenedStructureList>\n        <value>7</value>\n        <other>8</other>\n    </flattenedStructureList>\n</XmlListsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'stringList': [
              'foo',
              'bar',
            ],
            'stringSet': [
              'foo',
              'bar',
            ],
            'integerList': [
              1,
              2,
            ],
            'booleanList': [
              true,
              false,
            ],
            'timestampList': [
              1398796238,
              1398796238,
            ],
            'enumList': [
              'Foo',
              '0',
            ],
            'intEnumList': [
              1,
              2,
            ],
            'nestedStringList': [
              [
                'foo',
                'bar',
              ],
              [
                'baz',
                'qux',
              ],
            ],
            'renamedListMembers': [
              'foo',
              'bar',
            ],
            'flattenedList': [
              'hi',
              'bye',
            ],
            'flattenedList2': [
              'yep',
              'nope',
            ],
            'flattenedListWithMemberNamespace': [
              'a',
              'b',
            ],
            'flattenedListWithNamespace': [
              'a',
              'b',
            ],
            'structureList': [
              {
                'a': '1',
                'b': '2',
              },
              {
                'a': '3',
                'b': '4',
              },
            ],
            'flattenedStructureList': [
              {
                'a': '5',
                'b': '6',
              },
              {
                'a': '7',
                'b': '8',
              },
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          XmlListsInputOutputRestXmlSerializer(),
          StructureListMemberRestXmlSerializer(),
        ],
      );
    },
  );
}

class XmlListsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlListsInputOutput> {
  const XmlListsInputOutputRestXmlSerializer() : super('XmlListsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlListsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlListsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringList':
          result.stringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'stringSet':
          result.stringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltSet,
              [FullType(String)],
            ),
          ) as _i6.BuiltSet<String>));
        case 'integerList':
          result.integerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(int)],
            ),
          ) as _i6.BuiltList<int>));
        case 'booleanList':
          result.booleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(bool)],
            ),
          ) as _i6.BuiltList<bool>));
        case 'timestampList':
          result.timestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i6.BuiltList<DateTime>));
        case 'enumList':
          result.enumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i7.FooEnum)],
            ),
          ) as _i6.BuiltList<_i7.FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i8.IntegerEnum)],
            ),
          ) as _i6.BuiltList<_i8.IntegerEnum>));
        case 'nestedStringList':
          result.nestedStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [
                FullType(
                  _i6.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i6.BuiltList<_i6.BuiltList<String>>));
        case 'renamedListMembers':
          result.renamedListMembers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedList':
          result.flattenedList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedList2':
          result.flattenedList2.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedListWithMemberNamespace':
          result.flattenedListWithMemberNamespace
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedListWithNamespace':
          result.flattenedListWithNamespace.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'structureList':
          result.structureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i9.StructureListMember)],
            ),
          ) as _i6.BuiltList<_i9.StructureListMember>));
        case 'flattenedStructureList':
          result.flattenedStructureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i9.StructureListMember)],
            ),
          ) as _i6.BuiltList<_i9.StructureListMember>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlListsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class StructureListMemberRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i9.StructureListMember> {
  const StructureListMemberRestXmlSerializer() : super('StructureListMember');

  @override
  Iterable<Type> get types => const [_i9.StructureListMember];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i9.StructureListMember deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.StructureListMemberBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'a':
          result.a = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'b':
          result.b = (serializers.deserialize(
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
    _i9.StructureListMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
