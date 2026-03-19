/// Central API configuration constants.
///
/// Update [baseUrl] to match the deployment target:
/// - Local dev : 'http://localhost:8000'
/// - Android emulator: 'http://10.0.2.2:8000'
/// - Production       : 'https://api.synergy.app'
class ApiConstants {
  ApiConstants._();

  /// Root URL of the FastAPI backend — no trailing slash.
  static const String baseUrl =
      'https://24f3-102-222-203-66.ngrok-free.app/api/v1/';
  // static const String baseUrl = 'http://localhost:8000/api/v1/';

  /// Default timeout durations.
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
