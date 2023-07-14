import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/student.dart';
import '../blocs/students_screen_blocs/get_students_bloc/get_students_bloc.dart';
import '../widgets/custom_fields_widget.dart';
import '../widgets/error_or_loading_indicator_widget.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context
                .read<GetStudentsBloc>()
                .add(const GetStudentsEvent.fetch()),
          )
        ],
      ),
      body: BlocBuilder<GetStudentsBloc, GetStudentsState>(
        builder: (context, state) {
          return state.when(
              initialState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: "Failed to Load"),
              loadingState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: null),
              failedState: (err) => ErrorOrLoadingIndicatorWidget(error: err),
              successState: (data) => ListView.builder(
                    itemBuilder: (context, index) {
                      Student student = data.students![index];
                      return ExpansionTile(
                        title: Text("Name: ${student.name}"),
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
                                    label: "Email", value: student.email),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Age",
                                    value: (student.age ?? "").toString()),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Student ID",
                                    value: (student.id ?? "").toString()),
                                const AppPadding(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: data.students!.length,
                  ));
        },
      ),
    );
  }
}
