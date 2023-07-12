import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_class_room_params.freezed.dart';

@freezed
class GetClassRoomParams with _$GetClassRoomParams {
  const factory GetClassRoomParams({
    final int? id,
  }) = _GetClassRoomParams;
}
