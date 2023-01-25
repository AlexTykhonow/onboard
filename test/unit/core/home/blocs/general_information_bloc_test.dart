import 'package:bloc_test/bloc_test.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:onboarding/core/home/blocs/general_information_bloc.dart';
import 'package:onboarding/core/home/repositories/general_information_repository.dart';

import 'mocked_general_information_api.dart';

class MockGeneralInformationRepository extends Mock
    implements GeneralInformationRepository {}

void main() {
  late GeneralInformationBloc generalInformationBloc;
  late GeneralInformationRepository generalInformationRepository;
  late MockedGeneralInformationApi generalInformationApi;
  setUp(() {
    generalInformationRepository = MockGeneralInformationRepository();
    generalInformationBloc =
        GeneralInformationBloc(generalInformationRepository);
    generalInformationApi = MockedGeneralInformationApi();
  });
  tearDown(() {
    generalInformationBloc.close();
  });

  group('GeneralInformationBloc', () {
    blocTest<GeneralInformationBloc, GeneralInformationState>(
      'emits [loading, fetched] '
      'when GeneralInformationEvent.fetch '
      'is added '
      'and GeneralInformationRepository.fetchFormFields '
      'return empty list',
      build: () {
        when(generalInformationRepository.fetchGeneralInformation)
            .thenAnswer((_) async => Future.value(const Right([])));

        return generalInformationBloc;
      },
      act: (bloc) => bloc.add(const GeneralInformationEvent.fetch()),
      expect: () => [
        const GeneralInformationState.loading(),
        const GeneralInformationState.fetched([]),
      ],
    );

    blocTest<GeneralInformationBloc, GeneralInformationState>(
      'emits [loading, failed] '
      'when GeneralInformationEvent.fetch '
      'is added '
      'and GeneralInformationRepository.fetchFormFields '
      'return error',
      build: () {
        when(generalInformationRepository.fetchGeneralInformation).thenAnswer(
          (_) async => Future.value(const Left('error')),
        );

        return generalInformationBloc;
      },
      act: (bloc) => bloc.add(const GeneralInformationEvent.fetch()),
      expect: () => [
        const GeneralInformationState.loading(),
        const GeneralInformationState.failed('error'),
      ],
    );
    blocTest<GeneralInformationBloc, GeneralInformationState>(
      'emits [loading, fetched] '
      'when GeneralInformationEvent.fetch '
      'is added '
      'and GeneralInformationRepository.fetchFormFields '
      'return general information list',
      build: () {
        when(generalInformationRepository.fetchGeneralInformation).thenAnswer(
          (_) async => Future.value(
            Right(
              generalInformationApi.generalInformationList,
            ),
          ),
        );

        return generalInformationBloc;
      },
      act: (bloc) => bloc.add(const GeneralInformationEvent.fetch()),
      expect: () => [
        const GeneralInformationState.loading(),
        GeneralInformationState.fetched(
          generalInformationApi.generalInformationList,
        ),
      ],
    );

    blocTest<GeneralInformationBloc, GeneralInformationState>(
      'emits [saved] '
      'when GeneralInformationEvent.save '
      'is added '
      'return saved state',
      build: () => GeneralInformationBloc(generalInformationRepository),
      act: (bloc) => bloc.add(const GeneralInformationEvent.save()),
      expect: () => [
        const GeneralInformationState.saved(),
      ],
    );
  });
}
