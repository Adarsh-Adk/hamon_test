part of 'get_registrations_bloc.dart';

@freezed
class GetRegistrationsEvent with _$GetRegistrationsEvent {
  const factory GetRegistrationsEvent.fetch() = _Fetch;
}
