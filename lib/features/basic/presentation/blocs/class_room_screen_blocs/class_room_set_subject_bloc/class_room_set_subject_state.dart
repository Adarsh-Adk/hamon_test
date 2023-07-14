part of 'class_room_set_subject_bloc.dart';

@freezed
class ClassRoomSetSubjectState with _$ClassRoomSetSubjectState {
  const factory ClassRoomSetSubjectState.initialState() = _InitialState;
  const factory ClassRoomSetSubjectState.loadingState() = _LoadingState;
  const factory ClassRoomSetSubjectState.failedState({required String error}) =
      _FailedState;
  const factory ClassRoomSetSubjectState.successState() = _SuccessState;
}
