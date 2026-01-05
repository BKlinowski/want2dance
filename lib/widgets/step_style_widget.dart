import 'package:flutter/material.dart';

class StepStyleWidget extends StatelessWidget {
  const StepStyleWidget({super.key, required this.stepName});

  final String stepName;

  @override
  Widget build(BuildContext context) {
    return Text(stepName);
  }
}
