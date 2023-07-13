part of 'get_subjects_bloc.dart';

@freezed
class GetSubjectsEvent with _$GetSubjectsEvent {
  const factory GetSubjectsEvent.fetch() = _Fetch;
}
