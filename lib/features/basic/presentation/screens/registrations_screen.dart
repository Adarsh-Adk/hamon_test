import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_padding.dart';
import '../../domain/entities/registration.dart';
import '../blocs/registration_screen_blocs/get_registrations_bloc/get_registrations_bloc.dart';
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
      body: BlocBuilder<GetRegistrationsBloc, GetRegistrationsState>(
        builder: (context, state) {
          return state.when(
              initialState: () =>
                  const ErrorOrLoadingIndicatorWidget(error: "Failed to Load"),
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
                                    value: (registration.id ?? "").toString())
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
    );
  }
}
