import 'dart:async';

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/pigeon_data_provider.android.g.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class NativeAndroidDataProvider implements LegacyNativeDataProvider {
  ///
  NativeAndroidDataProvider() : _pigeonDataProvider = PigeonDataProvider();

  final PigeonDataProvider _pigeonDataProvider;

  @override
  Future<void> initialize(String pinpointAppId) {
    return _pigeonDataProvider.initialize(pinpointAppId);
  }

  @override
  Future<String?> getEndpointId() {
    return _pigeonDataProvider.getEndpointId();
  }

  @override
  Future<String?> getGlobalMetrics() {
    return _pigeonDataProvider.getGlobalMetrics();
  }

  @override
  Future<String?> getGlobalAttributes() {
    return _pigeonDataProvider.getGlobalAttributes();
  }

  @override
  Future<void> deleteLegacyData() {
    return _pigeonDataProvider.deleteLegacyData();
  }
}
