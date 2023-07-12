import '../../../../core/entities/data_response.dart';

abstract class SubjectsRepository {
  Future<DataResponse> getSubjects();
}
