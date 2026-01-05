import 'package:flutter/material.dart';
import 'package:want2dance/models/app_screen.dart';
import 'package:want2dance/screens/choreo_main_screen.dart';

final List<AppScreen> appScreens = [
  AppScreen(
    screen: ChoreoMainScreen(),
    icon: ImageIcon(AssetImage('assets/icons/choreo.png')),
    label: 'Choreo',
    route: '/choreo',
  ),
  AppScreen(
    screen: Text("Steps"),
    icon: ImageIcon(AssetImage('assets/icons/steps.png')),
    label: "Steps",
    route: '/steps',
  ),
  AppScreen(
    screen: Text("KTT"),
    icon: ImageIcon(AssetImage('assets/icons/multisport.png')),
    label: "KTT",
    route: '/ktt',
  ),
];
