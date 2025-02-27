// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.register_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'register_type_output.g.dart';

abstract class RegisterTypeOutput
    with _i1.AWSEquatable<RegisterTypeOutput>
    implements Built<RegisterTypeOutput, RegisterTypeOutputBuilder> {
  factory RegisterTypeOutput({String? registrationToken}) {
    return _$RegisterTypeOutput._(registrationToken: registrationToken);
  }

  factory RegisterTypeOutput.build(
          [void Function(RegisterTypeOutputBuilder) updates]) =
      _$RegisterTypeOutput;

  const RegisterTypeOutput._();

  /// Constructs a [RegisterTypeOutput] from a [payload] and [response].
  factory RegisterTypeOutput.fromResponse(
    RegisterTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RegisterTypeOutput>> serializers = [
    RegisterTypeOutputAwsQuerySerializer()
  ];

  /// The identifier for this registration request.
  ///
  /// Use this registration token when calling DescribeTypeRegistration, which returns information about the status and IDs of the extension registration.
  String? get registrationToken;
  @override
  List<Object?> get props => [registrationToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterTypeOutput')
      ..add(
        'registrationToken',
        registrationToken,
      );
    return helper.toString();
  }
}

class RegisterTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RegisterTypeOutput> {
  const RegisterTypeOutputAwsQuerySerializer() : super('RegisterTypeOutput');

  @override
  Iterable<Type> get types => const [
        RegisterTypeOutput,
        _$RegisterTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RegisterTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTypeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegistrationToken':
          result.registrationToken = (serializers.deserialize(
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
    RegisterTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegisterTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RegisterTypeOutput(:registrationToken) = object;
    if (registrationToken != null) {
      result$
        ..add(const _i2.XmlElementName('RegistrationToken'))
        ..add(serializers.serialize(
          registrationToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
