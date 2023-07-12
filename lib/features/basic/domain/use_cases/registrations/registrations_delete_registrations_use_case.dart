import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/features/basic/domain/use_cases/registrations/params/delete_registration_params.dart';

import '../../../../../core/entities/use_case.dart';
import '../../repositories/registration_repository.dart';

class RegistrationsDeleteRegistrationUseCase
    extends UseCase<DataResponse, DeleteRegistrationParams> {
  final RegistrationsRepository repository;

  RegistrationsDeleteRegistrationUseCase(this.repository);

  @override
  Future<DataResponse> call(DeleteRegistrationParams params) async {
    return await repository.deleteRegistration(params.id);
  }
}
