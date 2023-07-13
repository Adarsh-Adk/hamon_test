part of 'get_students_bloc.dart';

@freezed
class GetStudentsState with _$GetStudentsState {
  const factory GetStudentsState.initialState() = _InitialState;
  const factory GetStudentsState.loadingState() = _LoadingState;
  const factory GetStudentsState.failedState({required String error}) =
      _FailedState;
  const factory GetStudentsState.successState({required Students data}) =
      _SuccessState;
}
