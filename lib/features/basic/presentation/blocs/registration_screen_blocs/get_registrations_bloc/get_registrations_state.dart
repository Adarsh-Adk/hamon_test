part of 'get_registrations_bloc.dart';

@freezed
class GetRegistrationsState with _$GetRegistrationsState {
  const factory GetRegistrationsState.initialState() = _InitialState;
  const factory GetRegistrationsState.loadingState() = _LoadingState;
  const factory GetRegistrationsState.failedState({required String error}) =
      _FailedState;
  const factory GetRegistrationsState.successState(
      {required Registrations data}) = _SuccessState;
}
