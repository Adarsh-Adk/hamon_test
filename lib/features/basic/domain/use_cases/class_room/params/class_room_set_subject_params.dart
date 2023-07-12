import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_room_set_subject_params.freezed.dart';

@freezed
class ClassRoomSetSubjectParams with _$ClassRoomSetSubjectParams {
  const factory ClassRoomSetSubjectParams(
      {final int? subjectId,
      final int? classRoomId}) = _ClassRoomSetSubjectParams;
}
