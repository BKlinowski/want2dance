import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  final bool reverse;

  const DiagonalClipper({this.reverse = false});

  @override
  Path getClip(Size size) {
    final path = Path();

    if (!reverse) {
      // Górny lewy trójkąt
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      // Dolny prawy trójkąt
      path.moveTo(size.width, 0);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
