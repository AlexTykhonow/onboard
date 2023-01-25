// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralInformation _$GeneralInformationFromJson(Map<String, dynamic> json) {
  return _GeneralInformation.fromJson(json);
}

/// @nodoc
mixin _$GeneralInformation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get labelEn => throw _privateConstructorUsedError;
  String get labelPl => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInformationCopyWith<GeneralInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInformationCopyWith<$Res> {
  factory $GeneralInformationCopyWith(
          GeneralInformation value, $Res Function(GeneralInformation) then) =
      _$GeneralInformationCopyWithImpl<$Res, GeneralInformation>;
  @useResult
  $Res call(
      {int id,
      String name,
      String labelEn,
      String labelPl,
      String placeholder,
      String type});
}

/// @nodoc
class _$GeneralInformationCopyWithImpl<$Res, $Val extends GeneralInformation>
    implements $GeneralInformationCopyWith<$Res> {
  _$GeneralInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? labelEn = null,
    Object? labelPl = null,
    Object? placeholder = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      labelEn: null == labelEn
          ? _value.labelEn
          : labelEn // ignore: cast_nullable_to_non_nullable
              as String,
      labelPl: null == labelPl
          ? _value.labelPl
          : labelPl // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralInformationCopyWith<$Res>
    implements $GeneralInformationCopyWith<$Res> {
  factory _$$_GeneralInformationCopyWith(_$_GeneralInformation value,
          $Res Function(_$_GeneralInformation) then) =
      __$$_GeneralInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String labelEn,
      String labelPl,
      String placeholder,
      String type});
}

/// @nodoc
class __$$_GeneralInformationCopyWithImpl<$Res>
    extends _$GeneralInformationCopyWithImpl<$Res, _$_GeneralInformation>
    implements _$$_GeneralInformationCopyWith<$Res> {
  __$$_GeneralInformationCopyWithImpl(
      _$_GeneralInformation _value, $Res Function(_$_GeneralInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? labelEn = null,
    Object? labelPl = null,
    Object? placeholder = null,
    Object? type = null,
  }) {
    return _then(_$_GeneralInformation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      labelEn: null == labelEn
          ? _value.labelEn
          : labelEn // ignore: cast_nullable_to_non_nullable
              as String,
      labelPl: null == labelPl
          ? _value.labelPl
          : labelPl // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralInformation implements _GeneralInformation {
  _$_GeneralInformation(
      {required this.id,
      required this.name,
      required this.labelEn,
      required this.labelPl,
      required this.placeholder,
      required this.type});

  factory _$_GeneralInformation.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInformationFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String labelEn;
  @override
  final String labelPl;
  @override
  final String placeholder;
  @override
  final String type;

  @override
  String toString() {
    return 'GeneralInformation(id: $id, name: $name, labelEn: $labelEn, labelPl: $labelPl, placeholder: $placeholder, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralInformation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.labelEn, labelEn) || other.labelEn == labelEn) &&
            (identical(other.labelPl, labelPl) || other.labelPl == labelPl) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, labelEn, labelPl, placeholder, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralInformationCopyWith<_$_GeneralInformation> get copyWith =>
      __$$_GeneralInformationCopyWithImpl<_$_GeneralInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralInformationToJson(
      this,
    );
  }
}

abstract class _GeneralInformation implements GeneralInformation {
  factory _GeneralInformation(
      {required final int id,
      required final String name,
      required final String labelEn,
      required final String labelPl,
      required final String placeholder,
      required final String type}) = _$_GeneralInformation;

  factory _GeneralInformation.fromJson(Map<String, dynamic> json) =
      _$_GeneralInformation.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get labelEn;
  @override
  String get labelPl;
  @override
  String get placeholder;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralInformationCopyWith<_$_GeneralInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
