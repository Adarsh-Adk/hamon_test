import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class ClassRoom with _$ClassRoom {
  const factory ClassRoom({
    final int? id,
    final int? size,
    final dynamic subject,
    final int? subjectId,
    final String? layout,
    final String? name,
  }) = _ClassRoom;

  factory ClassRoom.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomFromJson(json);
}
