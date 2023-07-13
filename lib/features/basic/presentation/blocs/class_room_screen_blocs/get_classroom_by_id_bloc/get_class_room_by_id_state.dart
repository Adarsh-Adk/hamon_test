part of 'get_class_room_by_id_bloc.dart';

@freezed
class GetClassRoomByIdState with _$GetClassRoomByIdState {
  const factory GetClassRoomByIdState.initialState() = _InitialState;
  const factory GetClassRoomByIdState.loadingState() = _LoadingState;
  const factory GetClassRoomByIdState.failedState({required String error}) =
      _FailedState;
  const factory GetClassRoomByIdState.successState({required ClassRoom data}) =
      _SuccessState;
}
