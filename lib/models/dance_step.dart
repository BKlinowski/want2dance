import 'package:want2dance/models/dance_style.dart';

class DanceStep {
  const DanceStep({
    required this.id,
    required this.name,
    this.description = '',
    required this.danceStyle,
  });

  final String id;
  final String name;
  final String description;
  final DanceStyle danceStyle;
}
