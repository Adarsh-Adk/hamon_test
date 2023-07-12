import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/core/entities/use_case.dart';

import '../../repositories/class_room_repository.dart';

class ClassRoomGetClassRoomsUseCase extends UseCase<DataResponse, NoParams> {
  final ClassRoomRepository classRoomRepository;
  ClassRoomGetClassRoomsUseCase(this.classRoomRepository);

  @override
  Future<DataResponse> call(NoParams params) async {
    return await classRoomRepository.getClassRooms();
  }
}
