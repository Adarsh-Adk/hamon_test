import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../domain/use_cases/class_room/class_room_set_subject_use_case.dart';
import '../../../../domain/use_cases/class_room/params/class_room_set_subject_params.dart';

part 'class_room_set_subject_bloc.freezed.dart';
part 'class_room_set_subject_event.dart';
part 'class_room_set_subject_state.dart';

class ClassRoomSetSubjectBloc
    extends Bloc<ClassRoomSetSubjectEvent, ClassRoomSetSubjectState> {
  final ClassRoomSetSubjectUseCase classRoomSetSubjectUseCase;

  ClassRoomSetSubjectBloc(this.classRoomSetSubjectUseCase)
      : super(const ClassRoomSetSubjectState.initialState()) {
    on<ClassRoomSetSubjectEvent>((event, emit) async {
      emit(const ClassRoomSetSubjectState.loadingState());
      try {
        await event.when(setSubject: (subjectId, classRoomId) async {
          final dataResponse = await classRoomSetSubjectUseCase(
              ClassRoomSetSubjectParams(
                  subjectId: subjectId, classRoomId: classRoomId));
          if (dataResponse.hasData) {
            emit(const ClassRoomSetSubjectState.successState());
          } else {
            emit(ClassRoomSetSubjectState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(ClassRoomSetSubjectState.failedState(error: "$e"));
      }
    });
  }
}
