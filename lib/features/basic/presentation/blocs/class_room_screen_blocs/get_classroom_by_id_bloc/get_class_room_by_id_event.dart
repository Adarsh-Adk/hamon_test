part of 'get_class_room_by_id_bloc.dart';

@freezed
class GetClassRoomByIdEvent with _$GetClassRoomByIdEvent {
  const factory GetClassRoomByIdEvent.fetch({required int id}) = _Fetch;
}
