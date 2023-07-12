import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/students_repository.dart';

class StudentsGetStudentsUseCase extends UseCase<DataResponse, NoParams> {
  final StudentsRepository studentsRepository;

  StudentsGetStudentsUseCase(this.studentsRepository);
  @override
  Future<DataResponse> call(NoParams params) async {
    return await studentsRepository.getStudents();
  }
}
