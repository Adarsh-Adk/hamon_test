import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/classroom.dart';
import '../../domain/entities/subject.dart';
import '../blocs/class_room_screen_blocs/class_room_set_subject_bloc/class_room_set_subject_bloc.dart';
import '../blocs/class_room_screen_blocs/get_class_rooms_bloc/get_class_rooms_bloc.dart';
import '../blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';
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
        title: const Text("Classrooms"),
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
      body: BlocListener<ClassRoomSetSubjectBloc, ClassRoomSetSubjectState>(
        listener: (context, state) {
          state.when(
              initialState: () {},
              loadingState: () {},
              failedState: (error) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    error,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onError),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.error,
                ));
              },
              successState: () {
                context
                    .read<GetClassRoomsBloc>()
                    .add(const GetClassRoomsEvent.fetch());
              });
        },
        child: BlocBuilder<GetClassRoomsBloc, GetClassRoomsState>(
          builder: (context, state) {
            return state.when(
                initialState: () => const ErrorOrLoadingIndicatorWidget(
                    error: "Failed to Load"),
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
                                      label: "Subject",
                                      value: classRoom.subject),
                                  const AppPadding(),
                                  CustomFieldsWidget(
                                      label: "Layout",
                                      value:
                                          (classRoom.layout ?? "").toString()),
                                  const AppPadding(),
                                  CustomFieldsWidget(
                                      label: "Size",
                                      value: (classRoom.size ?? "").toString()),
                                  const AppPadding(),
                                  CustomFieldsWidget(
                                      label: "ClassRoom ID",
                                      value: (classRoom.id ?? "").toString()),
                                  const AppPadding(),
                                  OutlinedButton(
                                      onPressed: () {
                                        Subject? subject;
                                        selectSubjectDialog(
                                            context, subject, classRoom);
                                      },
                                      child: const Text("Update Subject"))
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
      ),
    );
  }

  Future<dynamic> selectSubjectDialog(
      BuildContext context, Subject? subject, ClassRoom classRoom) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            insetPadding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: Padding(
              padding: const EdgeInsets.all(AppConstants.defaultPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppPadding(),
                  BlocBuilder<GetSubjectsBloc, GetSubjectsState>(
                      builder: (context, state) {
                    return state.when(
                        initialState: () => const LinearProgressIndicator(),
                        loadingState: () => const LinearProgressIndicator(),
                        successState: (data) {
                          return Column(
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButtonFormField(
                                    hint: const Text("Select Subject"),
                                    onChanged: (ele) {
                                      subject = ele;
                                    },
                                    value: subject,
                                    items: data.subjects!
                                        .map((e) => DropdownMenuItem<Subject>(
                                              value: e,
                                              child: Text(
                                                e.name ?? "",
                                              ),
                                            ))
                                        .toList()),
                              ),
                              const AppPadding(),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (subject != null) {
                                        context
                                            .read<ClassRoomSetSubjectBloc>()
                                            .add(ClassRoomSetSubjectEvent
                                                .setSubject(
                                                    subjectId: subject?.id,
                                                    classRoomId: classRoom.id));
                                        if (mounted) {
                                          Navigator.pop(context);
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                            "Please select a valid subject",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onError),
                                          ),
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ));
                                      }
                                    },
                                    child: const Text("Update")),
                              )
                            ],
                          );
                        },
                        failedState: (error) => ErrorOrLoadingIndicatorWidget(
                              error: error,
                            ));
                  })
                ],
              ),
            ),
          );
        });
  }
}
