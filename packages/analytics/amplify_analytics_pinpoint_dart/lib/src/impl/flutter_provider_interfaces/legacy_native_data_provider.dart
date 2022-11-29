import 'dart:async';

/// {@template amplify_analytics_pinpoint.legacy_native_data_provider}
abstract class LegacyNativeDataProvider {
  ///
  Future<void> initialize(String pinpointAppId);

  /// Get stored Pinpoint Endpoint Id
  Future<String?> getEndpointId();

  /// Get endpoint global metrics stored as JSON
  Future<String?> getGlobalMetrics();

  /// Get endpoint attributes stored as JSON
  Future<String?> getGlobalAttributes();

  /// Delete all legacy native data
  Future<void> deleteLegacyData();
}
