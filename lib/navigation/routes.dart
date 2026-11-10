import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:want2dance/models/dance_style.dart';
import 'package:want2dance/screens/choreo_screen.dart';
import 'package:want2dance/screens/home_screen.dart';
import 'package:want2dance/widgets/choreo_widget.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: "Home",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/choreos/:categoryId',
      name: 'Choreos',
      builder: (context, state) {
        final DanceCategory category = DanceCategory
            .values[int.tryParse(state.pathParameters['categoryId']!) ?? 0];
        return ChoreoScreen(danceCategory: category);
      },
    ),
  ],
);
