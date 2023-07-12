import 'package:hamon_test/features/basic/domain/entities/classroom.dart';

import '../../../domain/entities/class_rooms.dart';

abstract class ClassRoomRemoteDataSource {
  Future<ClassRooms> getClassRooms();

  Future<ClassRoom> getClassRoom(int? id);

  Future<ClassRoom> setSubject(int? subjectId, int? classRoomId);
}
