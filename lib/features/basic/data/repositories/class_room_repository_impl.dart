import '../../../../core/entities/custom_exceptions.dart';
import '../../../../core/entities/data_response.dart';
import '../../domain/entities/classroom.dart';
import '../../domain/repositories/class_room_repository.dart';
import '../data_sources/class_rooms/class_room_remote_data_source.dart';
import '../data_sources/subjects/subjects_remote_data_source.dart';

class ClassRoomRepositoryImpl implements ClassRoomRepository {
  final ClassRoomRemoteDataSource remoteDataSource;
  final SubjectsRemoteDataSource subjectsRemoteDataSource;

  ClassRoomRepositoryImpl(
      {required this.subjectsRemoteDataSource, required this.remoteDataSource});

  @override
  Future<DataResponse> getClassRooms() async {
    try {
      final data = await remoteDataSource.getClassRooms();
      return DataResponse(data: data);
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }

  @override
  Future<DataResponse> getClassRoom(int? id) async {
    try {
      final data = await remoteDataSource.getClassRoom(id);
      if (data.subject != "" || data.subject != null) {
        int subject = int.parse(data.subject!);
        final subName = await subjectsRemoteDataSource.getSubject(subject);
        ClassRoom classRoomDataModel = ClassRoom(
            id: data.id,
            layout: data.layout,
            name: data.name,
            size: data.size,
            subject: subName.name,
            subjectId: data.subject);
        return DataResponse(data: classRoomDataModel);
      } else {
        return DataResponse(error: "Failed to get additional data");
      }
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }

  @override
  Future<DataResponse> setSubject(int? subjectId, int? classRoomId) async {
    try {
      final data = await remoteDataSource.setSubject(subjectId, classRoomId);
      if (data.subject != "") {
        int subject = int.parse(data.subject!);
        final subName = await subjectsRemoteDataSource.getSubject(subject);

        ClassRoom classRoomDataModel = ClassRoom(
            id: data.id,
            layout: data.layout,
            name: data.name,
            size: data.size,
            subject: subName.name,
            subjectId: data.subject);
        return DataResponse(data: classRoomDataModel);
      } else {
        return DataResponse(error: "Failed to get additional data");
      }
    } on ServerException {
      return DataResponse(
          error: CustomExceptionHandler.exceptionToMessage(ServerException()));
    }
  }
}
