import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class FlutterLegacyNativeDataProvider implements LegacyNativeDataProvider {
  @override
  Future<void> initialize(String pinpointAppId) async {}

  @override
  Future<String?> getEndpointId() async {
    return null;
  }

  @override
  Future<String?> getGlobalMetrics() async {
    return null;
  }

  @override
  Future<String?> getGlobalAttributes() async {
    return null;
  }

  @override
  Future<void> deleteLegacyData() async {}
}
