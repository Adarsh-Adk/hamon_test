import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/classroom.dart';
import '../blocs/class_room_screen_blocs/get_class_rooms_bloc/get_class_rooms_bloc.dart';
import '../widgets/custom_fields_widget.dart';
import '../widgets/error_or_loading_indicator_widget.dart';

class ClassRoomsScreen extends StatefulWidget {
  const ClassRoomsScreen({super.key});

  @override
  State<ClassRoomsScreen> createState() => _ClassRoomsScreenState();
}

class _ClassRoomsScreenState extends State<ClassRoomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClassRooms"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context
                .read<GetClassRoomsBloc>()
                .add(const GetClassRoomsEvent.fetch()),
          )
        ],
      ),
      body: BlocBuilder<GetClassRoomsBloc, GetClassRoomsState>(
        builder: (context, state) {
          return state.when(
              initialState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: "Failed to Load"),
              loadingState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: null),
              failedState: (err) => ErrorOrLoadingIndicatorWidget(error: err),
              successState: (data) => ListView.builder(
                    itemBuilder: (context, index) {
                      ClassRoom classRoom = data.classrooms![index];
                      return ExpansionTile(
                        title: Text("Name: ${classRoom.name}"),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        childrenPadding:
                            const EdgeInsets.all(AppConstants.defaultPadding),
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomFieldsWidget(
                                    label: "Subject", value: classRoom.subject),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Student ID",
                                    value: (classRoom.layout ?? "").toString()),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Size",
                                    value: (classRoom.size ?? "").toString()),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "ClassRoom ID",
                                    value: (classRoom.id ?? "").toString())
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: data.classrooms!.length,
                  ));
        },
      ),
    );
  }
}
