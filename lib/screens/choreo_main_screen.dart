import 'package:flutter/material.dart';
import 'package:want2dance/widgets/choreo_style_widget.dart';

class ChoreoMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChoreoStyleWidget(
          title: "Standard",
          icon: ImageIcon(
            AssetImage('assets/icons/standard_icon.png'),
            size: 80,
          ),
          gradientColors: [
            Color.fromARGB(200, 12, 112, 242),
            Color.fromARGB(200, 50, 12, 242),
          ],
        ),
        ChoreoStyleWidget(
          title: "Łacina",
          icon: ImageIcon(AssetImage('assets/icons/latino_icon.png'), size: 80),
          gradientColors: [
            Color.fromARGB(200, 244, 159, 0),
            Color.fromARGB(200, 244, 98, 0),
          ],
        ),
      ],
    );
  }
}
