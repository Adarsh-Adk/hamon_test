import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/basic/presentation/blocs/class_room_screen_blocs/get_class_rooms_bloc/get_class_rooms_bloc.dart';
import 'features/basic/presentation/blocs/class_room_screen_blocs/get_classroom_by_id_bloc/get_class_room_by_id_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/delete_registration_bloc/delete_registration_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/get_registrations_bloc/get_registrations_bloc.dart';
import 'features/basic/presentation/blocs/registration_screen_blocs/register_student_subject_bloc/register_student_subject_bloc.dart';
import 'features/basic/presentation/blocs/students_screen_blocs/get_students_bloc/get_students_bloc.dart';
import 'features/basic/presentation/blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';
import 'features/basic/presentation/screens/home_screen.dart';
import 'injection_handler.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => di.getIt.get<GetStudentsBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<GetSubjectsBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<GetClassRoomsBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<GetRegistrationsBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<GetClassRoomByIdBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<DeleteRegistrationBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<RegisterStudentSubjectBloc>(),
      ),
      BlocProvider(
        create: (_) => di.getIt.get<GetClassRoomByIdBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
