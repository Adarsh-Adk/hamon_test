import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/basic/data/data_sources/class_rooms/class_room_remote_data_source.dart';
import 'features/basic/data/data_sources/class_rooms/class_room_remote_data_source_impl.dart';
import 'features/basic/data/data_sources/registrations/registrations_remote_data_source.dart';
import 'features/basic/data/data_sources/registrations/registrations_remote_data_source_impl.dart';
import 'features/basic/data/data_sources/students/students_remote_data_source.dart';
import 'features/basic/data/data_sources/students/students_remote_data_source_impl.dart';
import 'features/basic/data/data_sources/subjects/subjects_remote_data_source.dart';
import 'features/basic/data/data_sources/subjects/subjects_remote_data_source_impl.dart';
import 'features/basic/data/repositories/class_room_repository_impl.dart';
import 'features/basic/data/repositories/registration_repository_impl.dart';
import 'features/basic/data/repositories/students_repository_impl.dart';
import 'features/basic/data/repositories/subjects_repository_impl.dart';
import 'features/basic/domain/repositories/class_room_repository.dart';
import 'features/basic/domain/repositories/registration_repository.dart';
import 'features/basic/domain/repositories/students_repository.dart';
import 'features/basic/domain/repositories/subjects_repository.dart';
import 'features/basic/domain/use_cases/class_room/class_room_get_class_room_use_case.dart';
import 'features/basic/domain/use_cases/class_room/class_room_get_class_rooms_use_case.dart';
import 'features/basic/domain/use_cases/class_room/class_room_set_subject_use_case.dart';
import 'features/basic/domain/use_cases/registrations/registrations_delete_registrations_use_case.dart';
import 'features/basic/domain/use_cases/registrations/registrations_get_registrations_use_case.dart';
import 'features/basic/domain/use_cases/registrations/registrations_set_registration_use_case.dart';
import 'features/basic/domain/use_cases/students/students_get_students_use_case.dart';
import 'features/basic/domain/use_cases/subjects/subjects_get_subjects_use_case.dart';
import 'features/basic/presentation/blocs/class_room_screen_blocs/get_class_rooms_bloc/get_class_rooms_bloc.dart';
import 'features/basic/presentation/blocs/class_room_screen_blocs/get_classroom_by_id_bloc/get_class_room_by_id_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/delete_registration_bloc/delete_registration_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/get_registrations_bloc/get_registrations_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/register_student_subject_bloc/register_student_subject_bloc.dart';
import 'features/basic/presentation/blocs/students_screen_blocs/get_students_bloc/get_students_bloc.dart';
import 'features/basic/presentation/blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => GetClassRoomsBloc(getIt()));
  getIt.registerFactory(() => GetClassRoomByIdBloc(getIt()));
  getIt.registerFactory(() => DeleteRegistrationBloc(getIt()));
  getIt.registerFactory(() => GetRegistrationsBloc(getIt()));
  getIt.registerFactory(() => RegisterStudentSubjectBloc(getIt()));
  getIt.registerFactory(() => GetStudentsBloc(getIt()));
  getIt.registerFactory(() => GetSubjectsBloc(getIt()));
  getIt.registerLazySingleton(() => StudentsGetStudentsUseCase(getIt()));
  getIt.registerLazySingleton(() => SubjectsGetSubjectsUseCase(getIt()));
  getIt.registerLazySingleton(() => ClassRoomGetClassRoomsUseCase(getIt()));
  getIt.registerLazySingleton(() => ClassRoomGetClassRoomUseCase(getIt()));
  getIt.registerLazySingleton(() => ClassRoomSetSubjectUseCase(getIt()));
  getIt.registerLazySingleton(
      () => RegistrationsGetRegistrationsUseCase(getIt()));
  getIt.registerLazySingleton(
      () => RegistrationsSetRegistrationUseCase(getIt()));
  getIt
      .registerSingleton(() => RegistrationsDeleteRegistrationUseCase(getIt()));
  getIt.registerLazySingleton<StudentsRepository>(
      () => StudentsRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerLazySingleton<SubjectsRepository>(
      () => SubjectsRepositoryImpl(remoteDataSource: getIt()));
  getIt.registerLazySingleton<ClassRoomRepository>(() =>
      ClassRoomRepositoryImpl(
          remoteDataSource: getIt(), subjectsRemoteDataSource: getIt()));
  getIt.registerLazySingleton<RegistrationsRepository>(() =>
      RegistrationsRepositoryImpl(
          remoteDataSource: getIt(),
          subjectsRemoteDataSource: getIt(),
          studentsRemoteDataSource: getIt()));
  getIt.registerLazySingleton<StudentsRemoteDataSource>(
      () => StudentsRemoteDataSourceImpl(client: getIt()));
  getIt.registerLazySingleton<SubjectsRemoteDataSource>(
      () => SubjectsRemoteDataSourceImpl(client: getIt()));
  getIt.registerLazySingleton<ClassRoomRemoteDataSource>(
      () => ClassRoomRemoteDataSourceImpl(client: getIt()));
  getIt.registerLazySingleton<RegistrationsRemoteDataSource>(
      () => RegistrationsRemoteDataSourceImpl(client: getIt()));
  getIt.registerLazySingleton(() => http.Client());
}
