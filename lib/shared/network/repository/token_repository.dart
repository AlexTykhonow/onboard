import 'dart:async';

import '../../../core/login/repositories/google_login_repository.dart';

enum AuthTrigger { login, logout }

class TokenRepository {
  final GoogleLoginRepository _googleLoginRepository;

  TokenRepository(this._googleLoginRepository);

  final StreamController<AuthTrigger> _streamController = StreamController();
  StreamController<AuthTrigger> get tokenStreamController => _streamController;

  String accessToken = 'accessToken';

  Future<void> removeToken() => _googleLoginRepository.deleteRefreshToken();

  Future<bool> checkIsToken() => _googleLoginRepository.checkIsToken();

  void dispose() {
    _streamController.close();
  }
}
