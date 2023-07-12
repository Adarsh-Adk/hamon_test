import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/class_room_repository.dart';
import 'params/get_class_room_params.dart';

class ClassRoomGetClassRoomUseCase
    extends UseCase<DataResponse, GetClassRoomParams> {
  final ClassRoomRepository classRoomRepository;

  ClassRoomGetClassRoomUseCase(this.classRoomRepository);
  @override
  Future<DataResponse> call(GetClassRoomParams params) async {
    return await classRoomRepository.getClassRoom(params.id);
  }
}
