part of 'delete_registration_bloc.dart';

@freezed
class DeleteRegistrationEvent with _$DeleteRegistrationEvent {
  const factory DeleteRegistrationEvent.delete({required int? id}) = _Delete;
}
