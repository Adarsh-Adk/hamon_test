part of 'register_student_subject_bloc.dart';

@freezed
class RegisterStudentSubjectState with _$RegisterStudentSubjectState {
  const factory RegisterStudentSubjectState.initialState() = _InitialState;
  const factory RegisterStudentSubjectState.loadingState() = _LoadingState;
  const factory RegisterStudentSubjectState.failedState(
      {required String error}) = _FailedState;
  const factory RegisterStudentSubjectState.successState() = _SuccessState;
}
