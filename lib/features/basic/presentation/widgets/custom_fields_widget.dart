import 'package:flutter/material.dart';

class CustomFieldsWidget extends StatelessWidget {
  final String label;
  final String? value;
  const CustomFieldsWidget(
      {super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 2, child: Text(label)),
        const Expanded(child: Text("-")),
        Expanded(flex: 5, child: Text("$value"))
      ],
    );
  }
}
