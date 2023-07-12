import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/core/entities/use_case.dart';
import 'package:hamon_test/features/basic/domain/repositories/students_repository.dart';

class StudentsGetStudentsUseCase extends UseCase<DataResponse, NoParams> {
  final StudentsRepository studentsRepository;

  StudentsGetStudentsUseCase(this.studentsRepository);
  @override
  Future<DataResponse> call(NoParams params) async {
    return await studentsRepository.getStudents();
  }
}
