import 'package:hamon_test/core/entities/data_response.dart';
import 'package:hamon_test/core/entities/use_case.dart';
import 'package:hamon_test/features/basic/domain/use_cases/class_room/params/class_room_set_subject_params.dart';

import '../../repositories/class_room_repository.dart';

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
