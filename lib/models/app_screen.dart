import 'package:flutter/material.dart';

class AppScreen {
  const AppScreen({
    required this.screen,
    required this.icon,
    required this.label,
    required this.route,
  });

  final Widget screen;
  final Icon icon;
  final String label;
  final String route;
}
