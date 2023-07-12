import 'package:hamon_test/core/entities/data_response.dart';

import '../../../../core/entities/custom_exceptions.dart';
import '../../domain/repositories/students_repository.dart';
import '../data_sources/students/students_remote_data_source.dart';

class StudentsRepositoryImpl implements StudentsRepository {
  final StudentsRemoteDataSource? remoteDataSource;

  StudentsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DataResponse> getStudents() async {
    try {
      final data = await remoteDataSource!.getStudents();
      return DataResponse(data: data);
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }
}
