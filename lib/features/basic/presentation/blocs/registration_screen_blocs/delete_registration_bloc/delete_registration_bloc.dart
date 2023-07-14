import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../domain/use_cases/registrations/params/delete_registration_params.dart';
import '../../../../domain/use_cases/registrations/registrations_delete_registrations_use_case.dart';

part 'delete_registration_bloc.freezed.dart';
part 'delete_registration_event.dart';
part 'delete_registration_state.dart';

class DeleteRegistrationBloc
    extends Bloc<DeleteRegistrationEvent, DeleteRegistrationState> {
  final RegistrationsDeleteRegistrationUseCase
      registrationDeleteRegistrationUseCase;
  DeleteRegistrationBloc(this.registrationDeleteRegistrationUseCase)
      : super(const DeleteRegistrationState.initialState()) {
    on<DeleteRegistrationEvent>((event, emit) async {
      emit(const DeleteRegistrationState.loadingState());
      try {
        await event.when(delete: (id) async {
          final dataResponse = await registrationDeleteRegistrationUseCase(
              DeleteRegistrationParams(id: id));
          if (dataResponse.hasData) {
            emit(const DeleteRegistrationState.successState());
          } else {
            emit(DeleteRegistrationState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(DeleteRegistrationState.failedState(error: "$e"));
      }
    });
  }
}
