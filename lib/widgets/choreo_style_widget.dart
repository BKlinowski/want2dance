import 'package:flutter/material.dart';
import 'package:want2dance/widgets/step_style_widget.dart';

class DanceStyleWidget extends StatelessWidget {
  const DanceStyleWidget({
    super.key,
    required this.choreoName,
    this.steps = const [],
  });

  final String choreoName;
  final List<StepStyleWidget> steps;

  @override
  Widget build(BuildContext context) {
    return Text(choreoName);
  }
}
