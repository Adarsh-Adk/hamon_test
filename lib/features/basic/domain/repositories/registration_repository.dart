import '../../../../core/entities/data_response.dart';

abstract class RegistrationsRepository {
  Future<DataResponse> getRegistrations();
  Future<DataResponse> setRegistration(int? subjectId, int? studentId);
  Future<DataResponse> deleteRegistration(int? registrationId);
}
