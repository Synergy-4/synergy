import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'api_constants.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Snackbar / Toast utility
// ─────────────────────────────────────────────────────────────────────────────

/// A global [NavigatorKey] that [AppSnackbar] uses to show snackbars without
/// requiring a [BuildContext] at the call site.
///
/// Attach this key to your [MaterialApp]:
/// ```dart
/// MaterialApp(
///   navigatorKey: AppSnackbar.navigatorKey,
///   ...
/// )
/// ```
// ─────────────────────────────────────────────────────────────────────────────

/// Utility class for showing styled snackbars / toast messages app-wide.
///
/// ### Setup
/// Assign [AppSnackbar.navigatorKey] to your `MaterialApp.navigatorKey`:
/// ```dart
/// MaterialApp(navigatorKey: AppSnackbar.navigatorKey, ...)
/// ```
///
/// ### Usage
/// ```dart
/// // Basic message
/// AppSnackbar.show(message: 'Profile saved');
///
/// // With a title and custom colour
/// AppSnackbar.show(
///   title: 'Heads up!',
///   message: 'Your session is about to expire.',
///   backgroundColor: Colors.orange,
/// );
///
/// // Convenience variants
/// AppSnackbar.success(message: 'Logged in successfully');
/// AppSnackbar.error(message: 'Invalid credentials');
/// ```
class AppSnackbar {
  AppSnackbar._();

  /// Attach this to `MaterialApp.navigatorKey` so [AppSnackbar] can reach the
  /// [ScaffoldMessenger] from anywhere, without a [BuildContext].
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // ── Core show method ───────────────────────────────────────────────────────

  /// Displays a snackbar with an optional [title], a required [message], and
  /// an optional [backgroundColor].
  ///
  /// Falls back to the theme's `snackBarTheme` colours when [backgroundColor]
  /// is not supplied.
  ///
  /// [duration] defaults to 3 seconds.
  static void show({
    String? title,
    required String message,
    Color? backgroundColor,
    Duration duration = const Duration(seconds: 3),
  }) {
    final context = navigatorKey.currentContext;
    if (context == null) return;

    final content = title != null
        ? Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                message,
                style: const TextStyle(fontSize: 13, color: Colors.white),
              ),
            ],
          )
        : Text(
            message,
            style: const TextStyle(fontSize: 13, color: Colors.white),
          );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: content,
          backgroundColor: backgroundColor,
          duration: duration,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
  }

  // ── Convenience variants ───────────────────────────────────────────────────

  /// Shows a green "success" snackbar.
  static void success({
    String? title,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) => show(
    title: title,
    message: message,
    backgroundColor: const Color(0xFF2E7D32), // dark green
    duration: duration,
  );

  /// Shows a red "error" snackbar.
  static void error({
    String? title,
    required String message,
    Duration duration = const Duration(seconds: 4),
  }) => show(
    title: title,
    message: message,
    backgroundColor: const Color(0xFFC62828), // dark red
    duration: duration,
  );
}

// ─────────────────────────────────────────────────────────────────────────────
// Result wrapper
// ─────────────────────────────────────────────────────────────────────────────

/// Sealed result type returned by every [ApiClient] method.
///
/// Use pattern matching to handle success and failure:
/// ```dart
/// final result = await apiClient.get('/profile');
/// switch (result) {
///   case ApiSuccess(:final data):  // use data
///   case ApiFailure(:final message, :final statusCode): // handle error
/// }
/// ```
sealed class ApiResponse<T> {
  const ApiResponse();
}

/// Successful HTTP response — [data] contains the decoded JSON body.
final class ApiSuccess<T> extends ApiResponse<T> {
  const ApiSuccess(this.data);
  final T data;
}

/// Failed HTTP response or network error.
final class ApiFailure<T> extends ApiResponse<T> {
  const ApiFailure({required this.message, this.statusCode});
  final String message;

  /// The HTTP status code, if the server responded (null for network errors).
  final int? statusCode;
}

// ─────────────────────────────────────────────────────────────────────────────
// Token store
// ─────────────────────────────────────────────────────────────────────────────

/// Persists the JWT access token in the device's secure enclave.
///
/// Call [saveToken] immediately after a successful login response.
/// Call [clearToken] on logout.
class TokenStore {
  const TokenStore();

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );
  static const _key = 'synergy_jwt';

  /// Persists [token] securely.
  Future<void> saveToken(String token) =>
      _storage.write(key: _key, value: token);

  /// Returns the stored token, or `null` if none is saved.
  Future<String?> getToken() => _storage.read(key: _key);

  /// Removes the token (call on logout).
  Future<void> clearToken() => _storage.delete(key: _key);
}

// ─────────────────────────────────────────────────────────────────────────────
// API client
// ─────────────────────────────────────────────────────────────────────────────

/// Singleton HTTP client wrapping Dio.
///
/// Obtain the shared instance via [ApiClient.instance].
///
/// ### Authentication
/// Pass `withAuth: true` (the default) to attach the stored JWT as a Bearer
/// token.  Pass `withAuth: false` for public endpoints like `/auth/login`.
///
/// ### Usage
/// ```dart
/// // GET
/// final result = await ApiClient.instance.get('/children');
///
/// // POST (login — no auth header needed)
/// final result = await ApiClient.instance.post(
///   '/auth/login',
///   body: {'email': email, 'password': password},
///   withAuth: false,
/// );
///
/// // PATCH
/// final result = await ApiClient.instance.patch(
///   '/children/$id',
///   body: {'name': 'Alice'},
/// );
/// ```
class ApiClient {
  ApiClient._({required String baseUrl, TokenStore? tokenStore})
    : _tokenStore = tokenStore ?? const TokenStore(),
      _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: ApiConstants.connectTimeout,
          receiveTimeout: ApiConstants.receiveTimeout,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ),
      );

  // ── Singleton ──────────────────────────────────────────────────────────────

  static ApiClient? _instance;

  /// Returns the shared [ApiClient] instance, initialised with [ApiConstants.baseUrl].
  static ApiClient get instance =>
      _instance ??= ApiClient._(baseUrl: ApiConstants.baseUrl);

  /// Replaces the singleton — useful in tests to inject a custom [baseUrl] or
  /// [tokenStore].
  // ignore: use_setters_to_change_properties
  static void configure({required String baseUrl, TokenStore? tokenStore}) {
    _instance = ApiClient._(baseUrl: baseUrl, tokenStore: tokenStore);
  }

  // ── Internals ──────────────────────────────────────────────────────────────

  final Dio _dio;
  final TokenStore _tokenStore;

  Future<Options> _buildOptions({
    required bool withAuth,
    bool isJson = false,
  }) async {
    final headers = <String, String>{};
    if (withAuth) {
      final token = await _tokenStore.getToken();
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
    }
    if (isJson) {
      return Options(headers: headers);
    }
    return Options(
      headers: headers,
      contentType: Headers.formUrlEncodedContentType,
    );
  }

  ApiFailure<Map<String, dynamic>> _handleError(Object error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return const ApiFailure(
            message: 'Request timed out. Please check your connection.',
          );
        case DioExceptionType.connectionError:
          return const ApiFailure(message: 'No internet connection.');
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          final message = _statusMessage(statusCode, error.response?.data);
          return ApiFailure(message: message, statusCode: statusCode);
        default:
          return ApiFailure(
            message: error.message ?? 'An unexpected error occurred.',
          );
      }
    }
    return ApiFailure(message: error.toString());
  }

  String _statusMessage(int? code, dynamic body) {
    // Try to extract a `detail` field from FastAPI error bodies first.
    if (body is Map) {
      final detail = body['detail'];
      if (detail is String) return detail;
    }
    return switch (code) {
      400 => 'Bad request.',
      401 => 'Unauthorized. Please log in again.',
      403 => 'You do not have permission to perform this action.',
      404 => 'Resource not found.',
      422 => 'Invalid data sent to the server.',
      500 => 'Server error. Please try again later.',
      _ => 'Request failed (HTTP $code).',
    };
  }

  // ── Public API ─────────────────────────────────────────────────────────────

  /// Sends a GET request to [endpoint].
  ///
  /// [queryParams] are appended to the URL as query-string parameters.
  Future<ApiResponse<Map<String, dynamic>>> get(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth);
      final response = await _dio.get<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParams,
        options: options,
      );
      return ApiSuccess(response.data ?? {});
    } catch (e) {
      print(e);
      return _handleError(e);
    }
  }

  Future<Object> getList(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth);
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
        options: options,
      );
      return ApiSuccess((response.data ?? []));
    } catch (e) {
      print(e);
      return _handleError(e);
    }
  }

  /// Sends a POST request to [endpoint] with [body] as the JSON payload.
  Future<ApiResponse<Map<String, dynamic>>> post(
    String endpoint, {
    required Map<String, dynamic> body,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth);
      final response = await _dio.post<Map<String, dynamic>>(
        endpoint,
        data: body,
        options: options,
      );
      return ApiSuccess(response.data ?? {});
    } catch (e) {
      print(e);
      return _handleError(e);
    }
  }

  /// Sends a POST request to [endpoint] with [body] as the JSON payload (application/json).
  Future<ApiResponse<Map<String, dynamic>>> postJson(
    String endpoint, {
    required Map<String, dynamic> body,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth, isJson: true);
      options.contentType = Headers.jsonContentType;
      final response = await _dio.post<Map<String, dynamic>>(
        endpoint,
        data: body,
        options: options,
      );
      return ApiSuccess(response.data ?? {});
    } catch (e) {
      print(e);
      return _handleError(e);
    }
  }

  /// Sends a PUT request to [endpoint] with [body] as the JSON payload.
  Future<ApiResponse<Map<String, dynamic>>> put(
    String endpoint, {
    required Map<String, dynamic> body,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth);
      final response = await _dio.put<Map<String, dynamic>>(
        endpoint,
        data: body,
        options: options,
      );
      return ApiSuccess(response.data ?? {});
    } catch (e) {
      return _handleError(e);
    }
  }

  /// Sends a PATCH request to [endpoint] with [body] as the JSON payload.
  Future<ApiResponse<Map<String, dynamic>>> patch(
    String endpoint, {
    required Map<String, dynamic> body,
    bool withAuth = true,
  }) async {
    try {
      final options = await _buildOptions(withAuth: withAuth);
      final response = await _dio.patch<Map<String, dynamic>>(
        endpoint,
        data: body,
        options: options,
      );
      return ApiSuccess(response.data ?? {});
    } catch (e) {
      return _handleError(e);
    }
  }
}
