import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/core/entities/use_case.dart';
import 'package:hamon_test/features/basic/domain/repositories/registration_repository.dart';
import 'package:hamon_test/features/basic/domain/use_cases/registrations/params/set_registration_params.dart';

class RegistrationsSetRegistrationUseCase
    extends UseCase<DataResponse, SetRegistrationParams> {
  final RegistrationsRepository registrationsRepository;

  RegistrationsSetRegistrationUseCase(this.registrationsRepository);

  @override
  Future<DataResponse> call(SetRegistrationParams params) async {
    return await registrationsRepository.setRegistration(
        params.subjectId, params.studentId);
  }
}
