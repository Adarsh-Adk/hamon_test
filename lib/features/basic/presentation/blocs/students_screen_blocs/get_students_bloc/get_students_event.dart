part of 'get_students_bloc.dart';

@freezed
class GetStudentsEvent with _$GetStudentsEvent {
  const factory GetStudentsEvent.fetch() = _Fetch;
}
