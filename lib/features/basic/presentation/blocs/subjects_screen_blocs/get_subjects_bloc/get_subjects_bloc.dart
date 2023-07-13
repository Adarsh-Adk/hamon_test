import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../../../core/entities/use_case.dart';
import '../../../../domain/entities/subjects.dart';
import '../../../../domain/use_cases/subjects/subjects_get_subjects_use_case.dart';

part 'get_subjects_bloc.freezed.dart';
part 'get_subjects_event.dart';
part 'get_subjects_state.dart';

class GetSubjectsBloc extends Bloc<GetSubjectsEvent, GetSubjectsState> {
  final SubjectsGetSubjectsUseCase subjectsGetSubjectUseCase;
  GetSubjectsBloc(this.subjectsGetSubjectUseCase)
      : super(const GetSubjectsState.initialState()) {
    on<GetSubjectsEvent>((event, emit) async {
      emit(const GetSubjectsState.loadingState());
      try {
        await event.when(fetch: () async {
          final dataResponse =
              await subjectsGetSubjectUseCase(const NoParams());
          if (dataResponse.hasData) {
            Subjects subjects = dataResponse.data;
            if ((subjects.subjects ?? []).isEmpty) {
              emit(GetSubjectsState.failedState(
                  error: CustomExceptionHandler.exceptionToMessage(
                      EmptyListException())));
            } else {
              emit(GetSubjectsState.successState(data: subjects));
            }
          } else {
            emit(GetSubjectsState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(GetSubjectsState.failedState(error: "$e"));
      }
    });
  }
}
