import 'package:mocktail/mocktail.dart';
import 'package:onboarding/core/home/models/general_information.dart';
import 'package:onboarding/core/home/repositories/general_information_api.dart';

class MockedGeneralInformationApi extends Mock
    implements GeneralInformationApi {
  final generalInformationList = [
    GeneralInformation(
      id: 1,
      name: 'Name1',
      labelEn: 'labelEn',
      labelPl: 'labelPl',
      placeholder: 'placeholder',
      type: 'type',
    ),
    GeneralInformation(
      id: 2,
      name: 'Name2',
      labelEn: 'labelEn',
      labelPl: 'labelPl',
      placeholder: 'placeholder',
      type: 'type',
    ),
  ];
}
