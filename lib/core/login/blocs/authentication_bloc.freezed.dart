// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownAuthenticationState value) unknown,
    required TResult Function(AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(UnauthenticatedAuthenticationState value)
        unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownAuthenticationState value)? unknown,
    TResult? Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(UnauthenticatedAuthenticationState value)?
        unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownAuthenticationState value)? unknown,
    TResult Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(UnauthenticatedAuthenticationState value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownAuthenticationStateCopyWith<$Res> {
  factory _$$UnknownAuthenticationStateCopyWith(
          _$UnknownAuthenticationState value,
          $Res Function(_$UnknownAuthenticationState) then) =
      __$$UnknownAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnknownAuthenticationState>
    implements _$$UnknownAuthenticationStateCopyWith<$Res> {
  __$$UnknownAuthenticationStateCopyWithImpl(
      _$UnknownAuthenticationState _value,
      $Res Function(_$UnknownAuthenticationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownAuthenticationState implements UnknownAuthenticationState {
  const _$UnknownAuthenticationState();

  @override
  String toString() {
    return 'AuthenticationState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownAuthenticationState value) unknown,
    required TResult Function(AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(UnauthenticatedAuthenticationState value)
        unauthenticated,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownAuthenticationState value)? unknown,
    TResult? Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(UnauthenticatedAuthenticationState value)?
        unauthenticated,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownAuthenticationState value)? unknown,
    TResult Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(UnauthenticatedAuthenticationState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownAuthenticationState implements AuthenticationState {
  const factory UnknownAuthenticationState() = _$UnknownAuthenticationState;
}

/// @nodoc
abstract class _$$AuthenticatedAuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticatedAuthenticationStateCopyWith(
          _$AuthenticatedAuthenticationState value,
          $Res Function(_$AuthenticatedAuthenticationState) then) =
      __$$AuthenticatedAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticatedAuthenticationState>
    implements _$$AuthenticatedAuthenticationStateCopyWith<$Res> {
  __$$AuthenticatedAuthenticationStateCopyWithImpl(
      _$AuthenticatedAuthenticationState _value,
      $Res Function(_$AuthenticatedAuthenticationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedAuthenticationState
    implements AuthenticatedAuthenticationState {
  const _$AuthenticatedAuthenticationState();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownAuthenticationState value) unknown,
    required TResult Function(AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(UnauthenticatedAuthenticationState value)
        unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownAuthenticationState value)? unknown,
    TResult? Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(UnauthenticatedAuthenticationState value)?
        unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownAuthenticationState value)? unknown,
    TResult Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(UnauthenticatedAuthenticationState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAuthenticationState implements AuthenticationState {
  const factory AuthenticatedAuthenticationState() =
      _$AuthenticatedAuthenticationState;
}

/// @nodoc
abstract class _$$UnauthenticatedAuthenticationStateCopyWith<$Res> {
  factory _$$UnauthenticatedAuthenticationStateCopyWith(
          _$UnauthenticatedAuthenticationState value,
          $Res Function(_$UnauthenticatedAuthenticationState) then) =
      __$$UnauthenticatedAuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnauthenticatedAuthenticationState>
    implements _$$UnauthenticatedAuthenticationStateCopyWith<$Res> {
  __$$UnauthenticatedAuthenticationStateCopyWithImpl(
      _$UnauthenticatedAuthenticationState _value,
      $Res Function(_$UnauthenticatedAuthenticationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedAuthenticationState
    implements UnauthenticatedAuthenticationState {
  const _$UnauthenticatedAuthenticationState();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedAuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownAuthenticationState value) unknown,
    required TResult Function(AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(UnauthenticatedAuthenticationState value)
        unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownAuthenticationState value)? unknown,
    TResult? Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(UnauthenticatedAuthenticationState value)?
        unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownAuthenticationState value)? unknown,
    TResult Function(AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(UnauthenticatedAuthenticationState value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedAuthenticationState
    implements AuthenticationState {
  const factory UnauthenticatedAuthenticationState() =
      _$UnauthenticatedAuthenticationState;
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthenticationEvent value) login,
    required TResult Function(LogoutAuthenticationEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthenticationEvent value)? login,
    TResult? Function(LogoutAuthenticationEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthenticationEvent value)? login,
    TResult Function(LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginAuthenticationEventCopyWith<$Res> {
  factory _$$LoginAuthenticationEventCopyWith(_$LoginAuthenticationEvent value,
          $Res Function(_$LoginAuthenticationEvent) then) =
      __$$LoginAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LoginAuthenticationEvent>
    implements _$$LoginAuthenticationEventCopyWith<$Res> {
  __$$LoginAuthenticationEventCopyWithImpl(_$LoginAuthenticationEvent _value,
      $Res Function(_$LoginAuthenticationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginAuthenticationEvent implements LoginAuthenticationEvent {
  const _$LoginAuthenticationEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthenticationEvent value) login,
    required TResult Function(LogoutAuthenticationEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthenticationEvent value)? login,
    TResult? Function(LogoutAuthenticationEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthenticationEvent value)? login,
    TResult Function(LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuthenticationEvent implements AuthenticationEvent {
  const factory LoginAuthenticationEvent() = _$LoginAuthenticationEvent;
}

/// @nodoc
abstract class _$$LogoutAuthenticationEventCopyWith<$Res> {
  factory _$$LogoutAuthenticationEventCopyWith(
          _$LogoutAuthenticationEvent value,
          $Res Function(_$LogoutAuthenticationEvent) then) =
      __$$LogoutAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutAuthenticationEvent>
    implements _$$LogoutAuthenticationEventCopyWith<$Res> {
  __$$LogoutAuthenticationEventCopyWithImpl(_$LogoutAuthenticationEvent _value,
      $Res Function(_$LogoutAuthenticationEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutAuthenticationEvent implements LogoutAuthenticationEvent {
  const _$LogoutAuthenticationEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutAuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthenticationEvent value) login,
    required TResult Function(LogoutAuthenticationEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthenticationEvent value)? login,
    TResult? Function(LogoutAuthenticationEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthenticationEvent value)? login,
    TResult Function(LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutAuthenticationEvent implements AuthenticationEvent {
  const factory LogoutAuthenticationEvent() = _$LogoutAuthenticationEvent;
}
