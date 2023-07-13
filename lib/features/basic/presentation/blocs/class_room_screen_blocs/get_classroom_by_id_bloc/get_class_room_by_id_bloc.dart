import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../domain/entities/classroom.dart';
import '../../../../domain/use_cases/class_room/class_room_get_class_room_use_case.dart';
import '../../../../domain/use_cases/class_room/params/get_class_room_params.dart';

part 'get_class_room_by_id_bloc.freezed.dart';
part 'get_class_room_by_id_event.dart';
part 'get_class_room_by_id_state.dart';

class GetClassRoomByIdBloc
    extends Bloc<GetClassRoomByIdEvent, GetClassRoomByIdState> {
  final ClassRoomGetClassRoomUseCase classRoomGetClassRoomUseCase;
  GetClassRoomByIdBloc(this.classRoomGetClassRoomUseCase)
      : super(const GetClassRoomByIdState.initialState()) {
    on<GetClassRoomByIdEvent>((event, emit) async {
      emit(const GetClassRoomByIdState.loadingState());
      try {
        await event.when(fetch: (id) async {
          final dataResponse =
              await classRoomGetClassRoomUseCase(GetClassRoomParams(id: id));
          if (dataResponse.hasData) {
            emit(GetClassRoomByIdState.successState(data: dataResponse.data));
          } else {
            emit(GetClassRoomByIdState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(GetClassRoomByIdState.failedState(error: "$e"));
      }
    });
  }
}
