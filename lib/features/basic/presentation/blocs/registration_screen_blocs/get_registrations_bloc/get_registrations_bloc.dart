import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/custom_exceptions.dart';
import '../../../../../../core/entities/use_case.dart';
import '../../../../domain/entities/registrations.dart';
import '../../../../domain/use_cases/registrations/registrations_get_registrations_use_case.dart';

part 'get_registrations_bloc.freezed.dart';
part 'get_registrations_event.dart';
part 'get_registrations_state.dart';

class GetRegistrationsBloc
    extends Bloc<GetRegistrationsEvent, GetRegistrationsState> {
  final RegistrationsGetRegistrationsUseCase
      registrationsGetRegistrationsUseCase;
  GetRegistrationsBloc(this.registrationsGetRegistrationsUseCase)
      : super(const GetRegistrationsState.initialState()) {
    on<GetRegistrationsEvent>((event, emit) async {
      emit(const GetRegistrationsState.loadingState());
      try {
        await event.when(fetch: () async {
          final dataResponse =
              await registrationsGetRegistrationsUseCase(const NoParams());
          if (dataResponse.hasData) {
            Registrations registrations = dataResponse.data;
            if ((registrations.registrations ?? []).isEmpty) {
              emit(GetRegistrationsState.failedState(
                  error: CustomExceptionHandler.exceptionToMessage(
                      EmptyListException())));
            } else {
              emit(GetRegistrationsState.successState(data: registrations));
            }
          } else {
            emit(GetRegistrationsState.failedState(
                error: dataResponse.error ??
                    CustomExceptionHandler.exceptionToMessage(
                        EmptyErrorException())));
          }
        });
      } catch (e) {
        emit(GetRegistrationsState.failedState(error: "$e"));
      }
    });
  }
}
