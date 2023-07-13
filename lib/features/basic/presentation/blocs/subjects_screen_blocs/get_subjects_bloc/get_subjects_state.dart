part of 'get_subjects_bloc.dart';

@freezed
class GetSubjectsState with _$GetSubjectsState {
  const factory GetSubjectsState.initialState() = _InitialState;
  const factory GetSubjectsState.loadingState() = _LoadingState;
  const factory GetSubjectsState.successState({required Subjects data}) =
      _SuccessState;
  const factory GetSubjectsState.failedState({required String error}) =
      _FailedState;
}
