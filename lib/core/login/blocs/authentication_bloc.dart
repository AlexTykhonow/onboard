import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/network/repository/token_repository.dart';
import '../repositories/authentication_repository.dart';

part 'authentication_bloc.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = UnknownAuthenticationState;
  const factory AuthenticationState.authenticated() =
      AuthenticatedAuthenticationState;
  const factory AuthenticationState.unauthenticated() =
      UnauthenticatedAuthenticationState;
}

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login() = LoginAuthenticationEvent;
  const factory AuthenticationEvent.logout() = LogoutAuthenticationEvent;
}

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._repository,
  ) : super(const AuthenticationState.unknown()) {
    on<LoginAuthenticationEvent>((event, emit) => _login(emit));
    on<LogoutAuthenticationEvent>((event, emit) => _logout(emit));

    _repository.authStatus.listen((event) {
      switch (event) {
        case AuthTrigger.login:
          add(const LoginAuthenticationEvent());
          break;
        case AuthTrigger.logout:
          add(const LogoutAuthenticationEvent());
          break;
      }
    });
  }

  final AuthenticationRepository _repository;

  Future<void> _login(Emitter<AuthenticationState> emit) async =>
      emit(const AuthenticationState.authenticated());

  Future<void> _logout(Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.unauthenticated());
    await _repository.logout();
  }
}
