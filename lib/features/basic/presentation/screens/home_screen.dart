import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/class_room_screen_blocs/get_class_rooms_bloc/get_class_rooms_bloc.dart';
import '../blocs/registration_screen_blocs/get_registrations_bloc/get_registrations_bloc.dart';
import '../blocs/students_screen_blocs/get_students_bloc/get_students_bloc.dart';
import '../blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';
import 'class_rooms_screen.dart';
import 'registrations_screen.dart';
import 'students_screen.dart';
import 'subjects_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context
        .read<GetRegistrationsBloc>()
        .add(const GetRegistrationsEvent.fetch());
    context.read<GetClassRoomsBloc>().add(const GetClassRoomsEvent.fetch());
    context.read<GetStudentsBloc>().add(const GetStudentsEvent.fetch());
    context.read<GetSubjectsBloc>().add(const GetSubjectsEvent.fetch());
    super.initState();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [
          StudentsScreen(),
          SubjectsScreen(),
          ClassRoomsScreen(),
          RegistrationsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (ind) {
          setState(() {
            index = ind;
          });
          // switch (ind) {
          //   case 0:
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (_) => const StudentsScreen()));
          //   case 1:
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (_) => const SubjectsScreen()));
          //   case 2:
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (_) => const ClassRoomsScreen()));
          //   case 3:
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (_) => const RegistrationsScreen()));
          //   default:
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (_) => const StudentsScreen()));
          // }
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Students"),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_note_outlined), label: "Subjects"),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_3_outlined), label: "Classrooms"),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined), label: "Registrations"),
        ],
      ),
    );
  }
}
