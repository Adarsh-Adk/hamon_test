import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/core/entities/use_case.dart';
import 'package:hamon_test/features/basic/domain/use_cases/class_room/params/get_class_room_params.dart';

import '../../repositories/class_room_repository.dart';

class ClassRoomGetClassRoomUseCase
    extends UseCase<DataResponse, GetClassRoomParams> {
  final ClassRoomRepository classRoomRepository;

  ClassRoomGetClassRoomUseCase(this.classRoomRepository);
  @override
  Future<DataResponse> call(GetClassRoomParams params) async {
    return await classRoomRepository.getClassRoom(params.id);
  }
}
