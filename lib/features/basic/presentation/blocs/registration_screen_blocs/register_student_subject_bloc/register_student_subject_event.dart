part of 'register_student_subject_bloc.dart';

@freezed
class RegisterStudentSubjectEvent with _$RegisterStudentSubjectEvent {
  const factory RegisterStudentSubjectEvent.register(
      {required int studentId, required int subjectId}) = _Register;
}
