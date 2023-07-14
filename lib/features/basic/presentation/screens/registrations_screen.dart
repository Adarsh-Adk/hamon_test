import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/registration.dart';
import '../../domain/entities/student.dart';
import '../../domain/entities/subject.dart';
import '../blocs/registration_screen_blocs/delete_registration_bloc/delete_registration_bloc.dart';
import '../blocs/registration_screen_blocs/get_registrations_bloc/get_registrations_bloc.dart';
import '../blocs/registration_screen_blocs/register_student_subject_bloc/register_student_subject_bloc.dart';
import '../blocs/students_screen_blocs/get_students_bloc/get_students_bloc.dart';
import '../blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';
import '../widgets/custom_fields_widget.dart';
import '../widgets/error_or_loading_indicator_widget.dart';

class RegistrationsScreen extends StatefulWidget {
  const RegistrationsScreen({super.key});

  @override
  State<RegistrationsScreen> createState() => _RegistrationsScreenState();
}

class _RegistrationsScreenState extends State<RegistrationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrations"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context
                .read<GetRegistrationsBloc>()
                .add(const GetRegistrationsEvent.fetch()),
          )
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<RegisterStudentSubjectBloc, RegisterStudentSubjectState>(
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
                        .read<GetRegistrationsBloc>()
                        .add(const GetRegistrationsEvent.fetch());
                  });
            },
          ),
          BlocListener<DeleteRegistrationBloc, DeleteRegistrationState>(
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
                        .read<GetRegistrationsBloc>()
                        .add(const GetRegistrationsEvent.fetch());
                  });
            },
          ),
        ],
        child: BlocBuilder<GetRegistrationsBloc, GetRegistrationsState>(
          builder: (context, state) {
            return state.when(
                initialState: () => const ErrorOrLoadingIndicatorWidget(
                    error: "Failed to Load"),
                loadingState: () =>
                    const ErrorOrLoadingIndicatorWidget(error: null),
                failedState: (err) => ErrorOrLoadingIndicatorWidget(error: err),
                successState: (data) => ListView.builder(
                      itemBuilder: (context, index) {
                        Registration registration = data.registrations![index];
                        return ExpansionTile(
                          title:
                              Text("Subject Name: ${registration.subjectName}"),
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
                                      label: "Student Name",
                                      value: registration.studentName),
                                  const AppPadding(),
                                  CustomFieldsWidget(
                                      label: "Student ID",
                                      value: (registration.student ?? "")
                                          .toString()),
                                  const AppPadding(),
                                  CustomFieldsWidget(
                                      label: "Registration ID",
                                      value:
                                          (registration.id ?? "").toString()),
                                  const AppPadding(
                                    multipliedBy: 2,
                                  ),
                                  OutlinedButton.icon(
                                      style: ButtonStyle(
                                          side: MaterialStatePropertyAll(
                                              BorderSide(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error))),
                                      icon: Icon(
                                        Icons.delete_outline,
                                        color:
                                            Theme.of(context).colorScheme.error,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<DeleteRegistrationBloc>()
                                            .add(DeleteRegistrationEvent.delete(
                                                id: registration.id));
                                      },
                                      label: Text(
                                        "Delete Registration",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .error),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: data.registrations!.length,
                    ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showSubjectStudentSelectionDialog(context);
        },
      ),
    );
  }

  void showSubjectStudentSelectionDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          Subject? subject;
          Student? student;
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
                          return DropdownButtonHideUnderline(
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
                          );
                        },
                        failedState: (error) => InkWell(
                            onTap: () => context
                                .read<GetSubjectsBloc>()
                                .add(const GetSubjectsEvent.fetch()),
                            child: SizedBox(
                                height: 100,
                                child: Center(child: Text(error)))));
                  }),
                  const AppPadding(),
                  BlocBuilder<GetStudentsBloc, GetStudentsState>(
                    builder: (context, state) {
                      return state.when(
                          initialState: () => const LinearProgressIndicator(),
                          loadingState: () => const LinearProgressIndicator(),
                          successState: (data) {
                            return DropdownButtonHideUnderline(
                              child: DropdownButtonFormField(
                                  hint: const Text("Select Student"),
                                  onChanged: (ele) {
                                    student = ele;
                                  },
                                  value: student,
                                  items: data.students!
                                      .map((e) => DropdownMenuItem<Student>(
                                            value: e,
                                            child: Text(
                                              e.name ?? "",
                                            ),
                                          ))
                                      .toList()),
                            );
                          },
                          failedState: (error) => InkWell(
                              onTap: () => context
                                  .read<GetStudentsBloc>()
                                  .add(const GetStudentsEvent.fetch()),
                              child: SizedBox(
                                  height: 100,
                                  child: Center(child: Text(error)))));
                    },
                  ),
                  const AppPadding(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (subject?.id != null && student?.id != null) {
                            context.read<RegisterStudentSubjectBloc>().add(
                                RegisterStudentSubjectEvent.register(
                                    studentId: student?.id,
                                    subjectId: subject?.id));
                            if (mounted) {
                              Navigator.pop(context);
                            }
                          } else {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Please select a valid subject and student",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onError),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                            ));
                          }
                        },
                        child: const Text("Update")),
                  )
                ],
              ),
            ),
          );
        });
  }
}
