import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/registration_repository.dart';
import 'params/set_registration_params.dart';

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
