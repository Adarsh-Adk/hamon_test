import 'package:hamon_test/core/entities/data_response.dart';

abstract class ClassRoomRepository {
  Future<DataResponse> getClassRooms();

  Future<DataResponse> getClassRoom(int? id);

  Future<DataResponse> setSubject(int? subjectId, int? classRoomId);
}
