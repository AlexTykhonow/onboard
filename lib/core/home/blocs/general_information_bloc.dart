import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/general_information.dart';
import '../repositories/general_information_repository.dart';

part 'general_information_bloc.freezed.dart';

@freezed
class GeneralInformationEvent with _$GeneralInformationEvent {
  const factory GeneralInformationEvent.fetch() = GeneralInformationEventFetch;

  const factory GeneralInformationEvent.save() = GeneralInformationEventUpdate;
}

@freezed
class GeneralInformationState with _$GeneralInformationState {
  const factory GeneralInformationState.init() = GeneralInformationInitial;

  const factory GeneralInformationState.loading() = GeneralInformationLoading;

  const factory GeneralInformationState.fetched(
    List<GeneralInformation> form,
  ) = GeneralInformationFetched;

  const factory GeneralInformationState.saved() = GeneralInformationSaved;

  const factory GeneralInformationState.failed(String error) =
      GeneralInformationFailed;
}

class GeneralInformationBloc
    extends Bloc<GeneralInformationEvent, GeneralInformationState> {
  final GeneralInformationRepository _generalInformationRepository;

  GeneralInformationBloc(
    this._generalInformationRepository,
  ) : super(const GeneralInformationState.init()) {
    on<GeneralInformationEvent>(
      (event, emit) => event.map(
        fetch: (value) => _fetch(emit),
        save: (value) => _save(emit),
      ),
    );
  }

  Future<void> _fetch(
    Emitter<GeneralInformationState> emit,
  ) async {
    emit(const GeneralInformationState.loading());

    final result =
        await _generalInformationRepository.fetchGeneralInformation();
    result.fold(
      (errorMessage) => emit(GeneralInformationState.failed(errorMessage)),
      (form) => emit(GeneralInformationState.fetched(form)),
    );
  }

  Future<void> _save(
    Emitter<GeneralInformationState> emit,
  ) async {
    emit(const GeneralInformationState.saved());
  }
}
