import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:want2dance/screens/home_screen.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 56, 189, 242),
    brightness: Brightness.dark,
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
void main() {
  runApp(MaterialApp(theme: theme, home: HomeScreen()));
}
