import 'package:bloc_test/bloc_test.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:onboarding/core/home/models/general_information.dart';
import 'package:onboarding/core/profile/bloc/profile_bloc.dart';
import 'package:onboarding/core/profile/repository/profile_repository.dart';

class MockProfileRepository extends Mock implements ProfileRepository {}

void main() {
  late ProfileRepository profileRepository;
  late List<GeneralInformation> generalInformationList;
  late ProfileBloc bloc;
  setUp(() {
    profileRepository = MockProfileRepository();
    bloc = ProfileBloc(profileRepository);
    generalInformationList = [
      GeneralInformation(
        id: 1,
        name: 'name',
        labelEn: 'labelEn',
        labelPl: 'labelPl',
        placeholder: 'placeholder',
        type: 'type',
      ),
    ];
  });
  test('initial state is correct', () {
    expect(bloc.state, const ProfileState.init());
  });
  blocTest<ProfileBloc, ProfileState>(
    'emits [loading, failed] '
        'when ProfileEvent.fetch '
        'is added '
        'and ProfileRepository.fetchFormFields '
        'return Error',
    build: () {
      when(() => profileRepository.fetchGeneralInformation())
          .thenAnswer((_) => Future.value(const Left('Error')));

      return bloc;
    },
    act: (bloc) => bloc.add(const ProfileEvent.fetch()),
    expect: () => [
      const ProfileState.loading(),
      const ProfileState.failed('Error'),
    ],
  );
  blocTest<ProfileBloc, ProfileState>(
    'emits [loading, fetched] '
        'when ProfileEvent.fetch '
        'is added '
        'and ProfileRepository.fetchFormFields '
        'return not empty list',
    build: () {
      when(() => profileRepository.fetchGeneralInformation())
          .thenAnswer((_) => Future.value(Right(generalInformationList)));

      return bloc;
    },
    act: (bloc) => bloc.add(const ProfileEvent.fetch()),
    expect: () => [
      const ProfileState.loading(),
      ProfileState.fetched(generalInformationList),
    ],
  );
  blocTest<ProfileBloc, ProfileState>(
    'emits [loading, fetched] '
        'when ProfileEvent.fetch '
        'is added '
        'and ProfileRepository.fetchFormFields '
        'return empty list',
    build: () {
      when(() => profileRepository.fetchGeneralInformation())
          .thenAnswer((_) => Future.value(const Right([])));

      return bloc;
    },
    act: (bloc) => bloc.add(const ProfileEvent.fetch()),
    expect: () => [
      const ProfileState.loading(),
      const ProfileState.fetched([]),
    ],
  );

}
