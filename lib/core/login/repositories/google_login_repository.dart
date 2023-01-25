import 'package:either_dart/either.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../shared/consts/google_login_const.dart';
import '../models/auth_response.dart';

const _refreshTokenKey = 'refresh_token';

class GoogleLoginRepository {
  final FlutterSecureStorage _secureStorage;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId: clientID(),
  );

  GoogleLoginRepository({
    FlutterSecureStorage? secureStorage,
  }) : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  Future<Either<String, AuthResponse>> tokenFromGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      final token = await user?.authentication;
      final result = await setUpToken(token?.accessToken);

      await _googleSignIn.signInSilently();
      _googleSignIn.onCurrentUserChanged
          .listen((account) async {
        if (_googleSignIn.currentUser != null) {
          final tokenSync = await account?.authentication;
          await setUpToken(tokenSync?.accessToken);
        }
      });

      return Right(result);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }

  Future<AuthResponse> setUpToken(String? accessToken) async {
    final result = AuthResponse(
      accessToken: accessToken!,
      idToken: 'id_token',
    );
    await _secureStorage.write(
      key: _refreshTokenKey,
      value: result.accessToken,
    );

    return result;
  }

  Future<void> deleteRefreshToken() async {
    await _secureStorage.delete(key: _refreshTokenKey);
    if (_googleSignIn.currentUser != null) {
      await _googleSignIn.disconnect();
    }
  }

  Future<bool> checkIsToken() async {
    if (_googleSignIn.currentUser == null) {
      return false;
    }

    return true;
  }
}
