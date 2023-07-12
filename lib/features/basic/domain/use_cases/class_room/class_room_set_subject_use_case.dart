import '../../../../../core/entities/data_response.dart';
import '../../../../../core/entities/use_case.dart';
import '../../repositories/class_room_repository.dart';
import 'params/class_room_set_subject_params.dart';

class ClassRoomSetSubjectUseCase
    extends UseCase<DataResponse, ClassRoomSetSubjectParams> {
  final ClassRoomRepository classRoomRepository;

  ClassRoomSetSubjectUseCase(this.classRoomRepository);

  @override
  Future<DataResponse> call(ClassRoomSetSubjectParams params) async {
    return await classRoomRepository.setSubject(
        params.subjectId, params.classRoomId);
  }
}
