import 'package:flutter/material.dart';

import '../../../shared/consts/app_string.dart';
import '../models/general_information.dart';

enum GeneralInformationType {
  name(
    nameId: AppString.name,
  ),
  surname(
    nameId: AppString.surname,
  ),
  maidenName(
    nameId: AppString.maidenName,
  ),
  dateOfBirth(
    nameId: AppString.dateOfBirth,
    suffixIcon: Icon(Icons.calendar_month_outlined),
    keyboardType: TextInputType.none,
    showDatePicker: true,
  ),
  pesel(
    nameId: AppString.pesel,
    suffixIcon: Icon(Icons.info_outline),
    keyboardType: TextInputType.number,
  ),
  nationality(
    nameId: AppString.nationality,
  ),
  phoneNumber(
    nameId: AppString.phoneNumber,
    keyboardType: TextInputType.phone,
  ),
  personalEmail(
    nameId: AppString.personalEmail,
    keyboardType: TextInputType.emailAddress,
  ),
  businessEmail(
    nameId: AppString.businessEmail,
    keyboardType: TextInputType.emailAddress,
  ),
  position(
    nameId: AppString.position,
  ),
  startDateOfEmployment(
    nameId: AppString.startDateOfEmployment,
    suffixIcon: Icon(Icons.calendar_month_outlined),
    keyboardType: TextInputType.none,
    showDatePicker: true,
  ),
  postalCode(
    nameId: AppString.postalCode,
    keyboardType: TextInputType.number,
  ),
  city(
    nameId: AppString.city,
  ),
  administrativeDivision(
    nameId: AppString.administrativeDivision,
  ),
  street(
    nameId: AppString.street,
  ),
  buildingNumber(
    nameId: AppString.buildingNumber,
    keyboardType: TextInputType.number,
  ),
  apartmentNumber(
    nameId: AppString.apartmentNumber,
    keyboardType: TextInputType.number,
  ),
  fillInCity(
    nameId: AppString.fillInCity,
  ),
  fillInDate(
    nameId: AppString.fillInDate,
    suffixIcon: Icon(Icons.calendar_month_outlined),
    keyboardType: TextInputType.none,
    showDatePicker: true,
  ),
  unknown(nameId: AppString.unknown);

  final String nameId;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;
  final bool showDatePicker;

  const GeneralInformationType({
    required this.nameId,
    this.suffixIcon,
    this.keyboardType,
    this.showDatePicker = false,
  });
}

extension GeneralInformationExtension on GeneralInformation {
  GeneralInformationType get informationType {
    var result = GeneralInformationType.unknown;

    for (final element in GeneralInformationType.values) {
      if (element.nameId == name) {
        result = element;
      }
    }

    return result;
  }

  String label(String languageCode) {
    switch (languageCode) {
      case 'en':
        return labelEn;
      case 'pl':
        return labelPl;
      default:
        return labelEn;
    }
  }
}
