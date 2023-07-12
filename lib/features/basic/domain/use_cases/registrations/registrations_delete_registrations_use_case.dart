import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/registration_repository.dart';
import 'params/delete_registration_params.dart';

class RegistrationsDeleteRegistrationUseCase
    extends UseCase<DataResponse, DeleteRegistrationParams> {
  final RegistrationsRepository repository;

  RegistrationsDeleteRegistrationUseCase(this.repository);

  @override
  Future<DataResponse> call(DeleteRegistrationParams params) async {
    return await repository.deleteRegistration(params.id);
  }
}
