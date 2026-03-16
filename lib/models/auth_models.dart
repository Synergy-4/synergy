// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Request models (sent TO the API)
// ─────────────────────────────────────────────────────────────────────────────

/// Payload sent to `POST /auth/login`.
///
/// ```json
/// {
///   "email": "alice@example.com",
///   "password": "secret123"
/// }
/// ```
@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String username,
    required String password,
    required String client_id,
    required String client_secret,
    required String grant_type,
    required String scope,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

/// Payload sent to `POST /auth/register`.
///
/// ```json
/// {
///   "full_name": "Alice Smith",
///   "email": "alice@example.com",
///   "password": "secret123"
/// }
/// ```
@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    required String password,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}

// ─────────────────────────────────────────────────────────────────────────────
// Response models (received FROM the API)
// ─────────────────────────────────────────────────────────────────────────────

/// Shared token response returned by both `/auth/login` and `/auth/register`.
///
/// ```json
/// {
///   "access_token": "eyJ...",
///   "token_type": "bearer"
/// }
/// ```
@freezed
class AuthTokenResponse with _$AuthTokenResponse {
  const factory AuthTokenResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') @Default('bearer') String tokenType,
  }) = _AuthTokenResponse;

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseFromJson(json);
}
