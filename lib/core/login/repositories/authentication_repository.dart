import 'dart:async';

import 'package:either_dart/either.dart';

import '../../../shared/network/repository/token_repository.dart';

class AuthenticationRepository {
  final TokenRepository _tokenRepository;

  AuthenticationRepository(this._tokenRepository);

  Stream<AuthTrigger> get authStatus async* {

    if (await _tokenRepository.checkIsToken()) {
      yield AuthTrigger.login;
    }else{
      yield AuthTrigger.logout;
    }

    yield* _tokenRepository.tokenStreamController.stream;
  }

  Future<Either<String, String>> login(
    String accessToken,
  ) async {
    const Either<String, String> result = Right('token_from_server');
    if (result.isRight) {
      _tokenRepository.accessToken = accessToken;
      _tokenRepository.tokenStreamController.add(AuthTrigger.login);
    }

    return result;
  }

  Future<void> logout() => _tokenRepository.removeToken();
}
