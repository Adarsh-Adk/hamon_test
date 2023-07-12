import '../../../domain/entities/registrations.dart';

abstract class RegistrationsRemoteDataSource {
  Future<Registrations> getRegistrations();
  Future<int> setRegistration(int? subjectId, int? studentId);
  Future<int> deleteRegistration(int? registrationId);
}
