import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class NativeIOSDataProvider implements LegacyNativeDataProvider {
  ///
  NativeIOSDataProvider()
      : _secureStorage = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(
            namespace: _namespace,
          ),
        );

  static const _namespace = 'com.amazonaws.AWSPinpointContext';
  static const _uniqueId = 'KeychainUniqueIdKey';
  static const _metrics = 'AWSPinpointEndpointAttributesKey';
  static const _attributes = 'AWSPinpointEndpointMetricsKey';

  final AmplifySecureStorage _secureStorage;

  @override
  Future<void> initialize(String pinpointAppId) async {}

  @override
  Future<String?> getEndpointId() {
    return _secureStorage.read(key: _uniqueId);
  }

  @override
  Future<String?> getGlobalMetrics() {
    return _secureStorage.read(key: _metrics);
  }

  @override
  Future<String?> getGlobalAttributes() {
    return _secureStorage.read(key: _attributes);
  }

  @override
  Future<void> deleteLegacyData() async {
    await _secureStorage.delete(key: _uniqueId);
    await _secureStorage.delete(key: _metrics);
    await _secureStorage.delete(key: _attributes);
  }
}
