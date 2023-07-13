import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../../../core/entities/use_case.dart';
import '../../../../domain/entities/students.dart';
import '../../../../domain/use_cases/students/students_get_students_use_case.dart';

part 'get_students_bloc.freezed.dart';
part 'get_students_event.dart';
part 'get_students_state.dart';

class GetStudentsBloc extends Bloc<GetStudentsEvent, GetStudentsState> {
  final StudentsGetStudentsUseCase studentsGetStudentsUseCase;
  GetStudentsBloc(this.studentsGetStudentsUseCase)
      : super(const GetStudentsState.initialState()) {
    on<GetStudentsEvent>((event, emit) async {
      emit(const GetStudentsState.loadingState());
      try {
        await event.when(fetch: () async {
          final dataResponse =
              await studentsGetStudentsUseCase(const NoParams());
          if (dataResponse.hasData) {
            Students students = dataResponse.data;
            if ((students.students ?? []).isEmpty) {
              emit(GetStudentsState.failedState(
                  error: CustomExceptionHandler.exceptionToMessage(
                      EmptyListException())));
            } else {
              emit(GetStudentsState.successState(data: students));
            }
          } else {
            emit(GetStudentsState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(GetStudentsState.failedState(error: "$e"));
      }
    });
  }
}
