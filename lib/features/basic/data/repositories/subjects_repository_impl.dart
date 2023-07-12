import 'package:hamon_test/core/entities/data_response.dart';

import '../../../../core/entities/custom_exceptions.dart';
import '../../domain/repositories/subjects_repository.dart';
import '../data_sources/subjects/subjects_remote_data_source.dart';

class SubjectsRepositoryImpl implements SubjectsRepository {
  final SubjectsRemoteDataSource? remoteDataSource;

  SubjectsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<DataResponse> getSubjects() async {
    try {
      final data = await remoteDataSource!.getSubjects();

      return DataResponse(data: data);
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }
}
