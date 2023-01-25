// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileEventFetchCopyWith<$Res> {
  factory _$$ProfileEventFetchCopyWith(
          _$ProfileEventFetch value, $Res Function(_$ProfileEventFetch) then) =
      __$$ProfileEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEventFetchCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventFetch>
    implements _$$ProfileEventFetchCopyWith<$Res> {
  __$$ProfileEventFetchCopyWithImpl(
      _$ProfileEventFetch _value, $Res Function(_$ProfileEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileEventFetch implements ProfileEventFetch {
  const _$ProfileEventFetch();

  @override
  String toString() {
    return 'ProfileEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ProfileEventFetch implements ProfileEvent {
  const factory ProfileEventFetch() = _$ProfileEventFetch;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<GeneralInformation> form) fetched,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<GeneralInformation> form)? fetched,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<GeneralInformation> form)? fetched,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) init,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? init,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? init,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInitialCopyWith<$Res> {
  factory _$$ProfileInitialCopyWith(
          _$ProfileInitial value, $Res Function(_$ProfileInitial) then) =
      __$$ProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitial>
    implements _$$ProfileInitialCopyWith<$Res> {
  __$$ProfileInitialCopyWithImpl(
      _$ProfileInitial _value, $Res Function(_$ProfileInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInitial implements ProfileInitial {
  const _$ProfileInitial();

  @override
  String toString() {
    return 'ProfileState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<GeneralInformation> form) fetched,
    required TResult Function(String error) failed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<GeneralInformation> form)? fetched,
    TResult? Function(String error)? failed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<GeneralInformation> form)? fetched,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) init,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileFailed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? init,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileFailed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? init,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial implements ProfileState {
  const factory ProfileInitial() = _$ProfileInitial;
}

/// @nodoc
abstract class _$$ProfileLoadingCopyWith<$Res> {
  factory _$$ProfileLoadingCopyWith(
          _$ProfileLoading value, $Res Function(_$ProfileLoading) then) =
      __$$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoading>
    implements _$$ProfileLoadingCopyWith<$Res> {
  __$$ProfileLoadingCopyWithImpl(
      _$ProfileLoading _value, $Res Function(_$ProfileLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<GeneralInformation> form) fetched,
    required TResult Function(String error) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<GeneralInformation> form)? fetched,
    TResult? Function(String error)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<GeneralInformation> form)? fetched,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) init,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? init,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? init,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class _$$ProfileFetchedCopyWith<$Res> {
  factory _$$ProfileFetchedCopyWith(
          _$ProfileFetched value, $Res Function(_$ProfileFetched) then) =
      __$$ProfileFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GeneralInformation> form});
}

/// @nodoc
class __$$ProfileFetchedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileFetched>
    implements _$$ProfileFetchedCopyWith<$Res> {
  __$$ProfileFetchedCopyWithImpl(
      _$ProfileFetched _value, $Res Function(_$ProfileFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$ProfileFetched(
      null == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as List<GeneralInformation>,
    ));
  }
}

/// @nodoc

class _$ProfileFetched implements ProfileFetched {
  const _$ProfileFetched(final List<GeneralInformation> form) : _form = form;

  final List<GeneralInformation> _form;
  @override
  List<GeneralInformation> get form {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_form);
  }

  @override
  String toString() {
    return 'ProfileState.fetched(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFetched &&
            const DeepCollectionEquality().equals(other._form, _form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_form));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFetchedCopyWith<_$ProfileFetched> get copyWith =>
      __$$ProfileFetchedCopyWithImpl<_$ProfileFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<GeneralInformation> form) fetched,
    required TResult Function(String error) failed,
  }) {
    return fetched(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<GeneralInformation> form)? fetched,
    TResult? Function(String error)? failed,
  }) {
    return fetched?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<GeneralInformation> form)? fetched,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) init,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileFailed value) failed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? init,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileFailed value)? failed,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? init,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProfileFetched implements ProfileState {
  const factory ProfileFetched(final List<GeneralInformation> form) =
      _$ProfileFetched;

  List<GeneralInformation> get form;
  @JsonKey(ignore: true)
  _$$ProfileFetchedCopyWith<_$ProfileFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileFailedCopyWith<$Res> {
  factory _$$ProfileFailedCopyWith(
          _$ProfileFailed value, $Res Function(_$ProfileFailed) then) =
      __$$ProfileFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProfileFailedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileFailed>
    implements _$$ProfileFailedCopyWith<$Res> {
  __$$ProfileFailedCopyWithImpl(
      _$ProfileFailed _value, $Res Function(_$ProfileFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProfileFailed(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileFailed implements ProfileFailed {
  const _$ProfileFailed(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFailedCopyWith<_$ProfileFailed> get copyWith =>
      __$$ProfileFailedCopyWithImpl<_$ProfileFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<GeneralInformation> form) fetched,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(List<GeneralInformation> form)? fetched,
    TResult? Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<GeneralInformation> form)? fetched,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) init,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? init,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? init,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ProfileFailed implements ProfileState {
  const factory ProfileFailed(final String error) = _$ProfileFailed;

  String get error;
  @JsonKey(ignore: true)
  _$$ProfileFailedCopyWith<_$ProfileFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
