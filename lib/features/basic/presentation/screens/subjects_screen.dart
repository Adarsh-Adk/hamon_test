import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/subject.dart';
import '../blocs/subjects_screen_blocs/get_subjects_bloc/get_subjects_bloc.dart';
import '../widgets/custom_fields_widget.dart';
import '../widgets/error_or_loading_indicator_widget.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({super.key});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subjects"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context
                .read<GetSubjectsBloc>()
                .add(const GetSubjectsEvent.fetch()),
          )
        ],
      ),
      body: BlocBuilder<GetSubjectsBloc, GetSubjectsState>(
        builder: (context, state) {
          return state.when(
              initialState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: "Failed to Load"),
              loadingState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: null),
              failedState: (err) => ErrorOrLoadingIndicatorWidget(error: err),
              successState: (data) => ListView.builder(
                    itemBuilder: (context, index) {
                      Subject subject = data.subjects![index];
                      return ExpansionTile(
                        title: Text("Name: ${subject.name}"),
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
                                    label: "Teacher", value: subject.teacher),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Credit",
                                    value: (subject.credits ?? "").toString()),
                                const AppPadding(),
                                CustomFieldsWidget(
                                    label: "Subject ID",
                                    value: (subject.id ?? "").toString()),
                                const AppPadding(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: data.subjects!.length,
                  ));
        },
      ),
    );
  }
}
