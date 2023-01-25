// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralInformation _$$_GeneralInformationFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralInformation(
      id: json['id'] as int,
      name: json['name'] as String,
      labelEn: json['label_en'] as String,
      labelPl: json['label_pl'] as String,
      placeholder: json['placeholder'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_GeneralInformationToJson(
        _$_GeneralInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label_en': instance.labelEn,
      'label_pl': instance.labelPl,
      'placeholder': instance.placeholder,
      'type': instance.type,
    };
