import '../../../domain/entities/class_rooms.dart';
import '../../../domain/entities/classroom.dart';

abstract class ClassRoomRemoteDataSource {
  Future<ClassRooms> getClassRooms();

  Future<ClassRoom> getClassRoom(int? id);

  Future<ClassRoom> setSubject(int? subjectId, int? classRoomId);
}
