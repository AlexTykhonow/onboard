import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required String accessToken,
    required String idToken,
  }) = _AuthResponse;
}
