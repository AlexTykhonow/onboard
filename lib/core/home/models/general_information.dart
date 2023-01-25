import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_information.freezed.dart';
part 'general_information.g.dart';

@freezed
class GeneralInformation with _$GeneralInformation {
  factory GeneralInformation({
    required int id,
    required String name,
    required String labelEn,
    required String labelPl,
    required String placeholder,
    required String type,
  }) = _GeneralInformation;

  factory GeneralInformation.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInformationFromJson(json);
}
