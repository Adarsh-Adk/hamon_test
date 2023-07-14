import 'package:flutter/material.dart';

class ErrorOrLoadingIndicatorWidget extends StatelessWidget {
  final String? error;
  const ErrorOrLoadingIndicatorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
          child: error == null
              ? const CircularProgressIndicator()
              : Text(
                  "$error",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                )),
    );
  }
}
