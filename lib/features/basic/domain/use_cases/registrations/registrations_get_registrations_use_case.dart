import 'package:hamon_test/core/entities/data_response.dart';

import '../../../../../core/entities/use_case.dart';
import '../../repositories/registration_repository.dart';

class RegistrationsGetRegistrationsUseCase
    extends UseCase<DataResponse, NoParams> {
  final RegistrationsRepository repository;

  RegistrationsGetRegistrationsUseCase(this.repository);

  @override
  Future<DataResponse> call(NoParams params) async {
    return await repository.getRegistrations();
  }
}
