import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repositories/authentication_repository.dart';
import '../repositories/google_login_repository.dart';

part 'login_cubit.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;

  const factory LoginState.inProgress() = LoginInProgress;

  const factory LoginState.success() = LoginSuccess;

  const factory LoginState.failed(String error) = LoginFailed;
}

class LoginCubit extends Cubit<LoginState> {
  final AuthenticationRepository _authenticationRepository;
  final GoogleLoginRepository _googleLoginRepository;

  LoginCubit(this._authenticationRepository, this._googleLoginRepository)
      : super(const LoginState.initial());

  Future<void> login() async {
    emit(const LoginState.inProgress());
    final googleLoginTokenResult =
        await _googleLoginRepository.tokenFromGoogle();
    await googleLoginTokenResult.fold(
      (failure) {
        emit(LoginState.failed(googleLoginTokenResult.left));
        emit(const LoginState.initial());
      },
      (success) async {
        final result = await _authenticationRepository.login(
          googleLoginTokenResult.right.accessToken,
        );
        result.fold(
          (failure) => emit(LoginState.failed(failure)),
          (success) => emit(const LoginState.success()),
        );
      },
    );
  }
}
