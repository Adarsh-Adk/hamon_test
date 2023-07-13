part of 'delete_registration_bloc.dart';

@freezed
class DeleteRegistrationState with _$DeleteRegistrationState {
  const factory DeleteRegistrationState.initialState() = _InitialState;
  const factory DeleteRegistrationState.loadingState() = _LoadingState;
  const factory DeleteRegistrationState.failedState({required String error}) =
      _FailedState;
  const factory DeleteRegistrationState.successState() = _SuccessState;
}
