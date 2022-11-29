import 'dart:async';
import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/native_data_provider.android.dart';
import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/native_data_provider.ios.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class FlutterLegacyNativeDataProvider implements LegacyNativeDataProvider {
  ///
  factory FlutterLegacyNativeDataProvider() {
    final provider =
        Platform.isIOS ? NativeIOSDataProvider() : NativeAndroidDataProvider();
    return FlutterLegacyNativeDataProvider._(provider);
  }

  FlutterLegacyNativeDataProvider._(this._nativeDataProvider);

  final LegacyNativeDataProvider _nativeDataProvider;

  @override
  Future<void> initialize(String pinpointAppId) async {
    return _nativeDataProvider.initialize(pinpointAppId);
  }

  @override
  Future<String?> getEndpointId() {
    return _nativeDataProvider.getEndpointId();
  }

  @override
  Future<String?> getGlobalMetrics() {
    return _nativeDataProvider.getGlobalMetrics();
  }

  @override
  Future<String?> getGlobalAttributes() {
    return _nativeDataProvider.getGlobalAttributes();
  }

  @override
  Future<void> deleteLegacyData() {
    return _nativeDataProvider.deleteLegacyData();
  }
}
