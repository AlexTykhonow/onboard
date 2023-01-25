import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/models/general_information.dart';
import '../repository/profile_repository.dart';

part 'profile_bloc.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetch() = ProfileEventFetch;
}
@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.init() = ProfileInitial;

  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.fetched(
      List<GeneralInformation> form,
      ) = ProfileFetched;

  const factory ProfileState.failed(String error) =
  ProfileFailed;
}

class ProfileBloc
    extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileBloc(
      this._profileRepository,
      ) : super(const ProfileState.init()) {
    on<ProfileEvent>(
          (event, emit) => event.map(
        fetch: (value) => _fetch(emit),
      ),
    );
  }

  Future<void> _fetch(
      Emitter<ProfileState> emit,
      ) async {
    emit(const ProfileState.loading());

    final result = await _profileRepository.fetchGeneralInformation();
    result.fold(
          (failure) => emit(ProfileState.failed(failure)),
          (success) => emit(ProfileState.fetched(success)),
    );
  }
}
