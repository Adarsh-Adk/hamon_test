part of 'class_room_set_subject_bloc.dart';

@freezed
class ClassRoomSetSubjectEvent with _$ClassRoomSetSubjectEvent {
  const factory ClassRoomSetSubjectEvent.setSubject(
      {required int? subjectId, required int? classRoomId}) = _SetSubject;
}
