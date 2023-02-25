import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';

/// {@template analytics_service}
/// A service that handles analytics from Firebase.
/// {@endtemplate}
class AnalyticsService extends GetxService {
  /// {@macro analytics_service}
  AnalyticsService({
    FirebaseAnalytics? analytics,
  }) : _analytics = analytics ?? FirebaseAnalytics.instance;

  final FirebaseAnalytics _analytics;

  /// Logs an app event.
  Future<void> logEvent({
    required String name,
    Map<String, dynamic>? parameters,
  }) async {
    await _analytics.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  /// Sets a user property to a given value.
  Future<void> setUserProperty({
    required String name,
    required String value,
  }) async {
    await _analytics.setUserProperty(
      name: name,
      value: value,
    );
  }

  /// Sets the user ID property.
  Future<void> setUserId(String? userId) async {
    await _analytics.setUserId(id: userId);
  }

  /// Sets multiple user properties to the supplied values.
  Future<void> setUserProperties(Map<String, String> properties) async {
    for (final property in properties.entries) {
      await _analytics.setUserProperty(
        name: property.key,
        value: property.value,
      );
    }
  }

  /// Sets whether analytics collection is enabled for this app on this device.
  Future<void> setAnalyticsCollectionEnabled(bool enabled) async {
    await _analytics.setAnalyticsCollectionEnabled(enabled);
  }

  /// Sets the duration of inactivity that terminates the current session.
  Future<void> setSessionTimeoutDuration(Duration duration) async {
    await _analytics.setSessionTimeoutDuration(duration);
  }

  /// Sets the user ID property.
  Future<void> resetAnalyticsData() async {
    await _analytics.resetAnalyticsData();
  }

  /// Sets the current screen name, which specifies the current visual context in your app.
  Future<void> setDefaultEventParameters(Map<String, dynamic> parameters) async {
    await _analytics.setDefaultEventParameters(parameters);
  }
}
