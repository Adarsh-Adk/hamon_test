import '../../../../core/entities/data_response.dart';

abstract class StudentsRepository {
  Future<DataResponse> getStudents();
}
