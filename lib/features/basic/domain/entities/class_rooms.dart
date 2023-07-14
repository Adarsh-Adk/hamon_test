import 'package:freezed_annotation/freezed_annotation.dart';

import 'classroom.dart';

part 'class_rooms.freezed.dart';
part 'class_rooms.g.dart';

@freezed
class ClassRooms with _$ClassRooms {
  const factory ClassRooms({
    final List<ClassRoom>? classrooms,
  }) = _ClassRooms;

  factory ClassRooms.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomsFromJson(json);
}
