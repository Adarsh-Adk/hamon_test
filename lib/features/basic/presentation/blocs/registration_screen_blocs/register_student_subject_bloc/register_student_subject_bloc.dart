import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../domain/use_cases/registrations/params/set_registration_params.dart';
import '../../../../domain/use_cases/registrations/registrations_set_registration_use_case.dart';

part 'register_student_subject_bloc.freezed.dart';
part 'register_student_subject_event.dart';
part 'register_student_subject_state.dart';

class RegisterStudentSubjectBloc
    extends Bloc<RegisterStudentSubjectEvent, RegisterStudentSubjectState> {
  final RegistrationsSetRegistrationUseCase
      registrationsRegisterStudentSubjectUseCase;
  RegisterStudentSubjectBloc(this.registrationsRegisterStudentSubjectUseCase)
      : super(const RegisterStudentSubjectState.initialState()) {
    on<RegisterStudentSubjectEvent>((event, emit) async {
      emit(const RegisterStudentSubjectState.loadingState());
      try {
        await event.when(register: (studentId, subjectId) async {
          final dataResponse = await registrationsRegisterStudentSubjectUseCase(
              SetRegistrationParams(
                  studentId: studentId, subjectId: subjectId));
          if (dataResponse.hasData) {
            emit(const RegisterStudentSubjectState.successState());
          } else {
            emit(RegisterStudentSubjectState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(RegisterStudentSubjectState.failedState(error: "$e"));
      }
    });
  }
}
