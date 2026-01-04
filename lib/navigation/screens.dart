import 'package:flutter/material.dart';
import 'package:want2dance/models/app_screen.dart';

final List<AppScreen> appScreens = [
  AppScreen(
    screen: Text("Choreo"),
    icon: Icon(Icons.sports_gymnastics_sharp),
    label: 'Choreo',
    route: '/choreo',
  ),
  AppScreen(
    screen: Text("Steps"),
    icon: Icon(Icons.snowshoeing_sharp),
    label: "Steps",
    route: '/steps',
  ),
  AppScreen(
    screen: Text("KTT"),
    icon: Icon(Icons.abc_sharp),
    label: "KTT",
    route: '/ktt',
  ),
];
