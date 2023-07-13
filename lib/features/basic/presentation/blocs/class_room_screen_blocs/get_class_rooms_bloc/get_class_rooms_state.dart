part of 'get_class_rooms_bloc.dart';

@freezed
class GetClassRoomsState with _$GetClassRoomsState {
  const factory GetClassRoomsState.initialState() = _InitialState;
  const factory GetClassRoomsState.loadingState() = _LoadingState;
  const factory GetClassRoomsState.successState({required ClassRooms data}) =
      _SuccesState;
  const factory GetClassRoomsState.failedState({required String error}) =
      _FailedState;
}
