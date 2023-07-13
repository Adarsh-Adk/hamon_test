import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../../../core/entities/use_case.dart';
import '../../../../domain/entities/class_rooms.dart';
import '../../../../domain/use_cases/class_room/class_room_get_class_rooms_use_case.dart';

part 'get_class_rooms_bloc.freezed.dart';
part 'get_class_rooms_event.dart';
part 'get_class_rooms_state.dart';

class GetClassRoomsBloc extends Bloc<GetClassRoomsEvent, GetClassRoomsState> {
  final ClassRoomGetClassRoomsUseCase getClassRooms;
  GetClassRoomsBloc(this.getClassRooms)
      : super(const GetClassRoomsState.initialState()) {
    on<GetClassRoomsEvent>((event, emit) async {
      emit(const GetClassRoomsState.loadingState());
      try {
        await event.when(fetch: () async {
          final dataResponse = await getClassRooms(const NoParams());
          if (dataResponse.hasData) {
            ClassRooms classRooms = dataResponse.data;

            if ((classRooms.classRooms ?? []).isEmpty) {
              emit(GetClassRoomsState.failedState(
                  error: CustomExceptionHandler.exceptionToMessage(
                      EmptyListException())));
            } else {
              emit(GetClassRoomsState.successState(data: dataResponse.data));
            }
          } else {
            emit(GetClassRoomsState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(GetClassRoomsState.failedState(error: "$e"));
      }
    });
  }
}
