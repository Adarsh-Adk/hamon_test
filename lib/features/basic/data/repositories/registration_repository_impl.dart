import '../../../../core/entities/custom_exceptions.dart';
import '../../../../core/entities/data_response.dart';
import '../../domain/entities/registration.dart';
import '../../domain/entities/registrations.dart';
import '../../domain/repositories/registration_repository.dart';
import '../data_sources/registrations/registrations_remote_data_source.dart';
import '../data_sources/students/students_remote_data_source.dart';
import '../data_sources/subjects/subjects_remote_data_source.dart';

class RegistrationsRepositoryImpl implements RegistrationsRepository {
  final RegistrationsRemoteDataSource? remoteDataSource;
  final SubjectsRemoteDataSource? subjectsRemoteDataSource;
  final StudentsRemoteDataSource? studentsRemoteDataSource;

  RegistrationsRepositoryImpl(
      {required this.remoteDataSource,
      required this.subjectsRemoteDataSource,
      required this.studentsRemoteDataSource});

  @override
  Future<DataResponse> getRegistrations() async {
    try {
      final data = await remoteDataSource!.getRegistrations();
      List<Registration> list = [];

      if (data.registrations != null) {
        if (data.registrations!.isNotEmpty) {
          for (int i = 0; i < data.registrations!.length; i++) {
            int subject = data.registrations![i].subject!;
            final subName = await subjectsRemoteDataSource!.getSubject(subject);
            int student = data.registrations![i].student!;
            final studentName =
                await studentsRemoteDataSource!.getStudent(student);
            Registration registration = Registration(
                id: data.registrations![i].id,
                student: student,
                subject: subject,
                studentName: studentName.name,
                subjectName: subName.name);
            list.add(registration);
          }
          Registrations finalModel = Registrations(registrations: list);

          return DataResponse(data: finalModel);
        } else {
          return DataResponse(error: "Registrations are empty");
        }
      } else {
        return DataResponse(error: "Registrations are empty");
      }
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }

  @override
  Future<DataResponse> setRegistration(int? subjectId, int? studentId) async {
    try {
      final data =
          await remoteDataSource!.setRegistration(subjectId, studentId);

      return DataResponse(data: data);
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }

  @override
  Future<DataResponse> deleteRegistration(int? registrationId) async {
    try {
      final data = await remoteDataSource!.deleteRegistration(registrationId);

      return DataResponse(data: data);
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }
}
