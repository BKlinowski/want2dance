import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:want2dance/models/dance_style.dart';
import 'package:want2dance/widgets/style_card_widget.dart';

class StyleScreen extends StatelessWidget {
  void onStyleClick(DanceCategory category, BuildContext context) {
    context.pushNamed(
      'Choreos',
      pathParameters: {'categoryId': category.toString()},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StyleCardWidget(
          onStyleClick: () => onStyleClick(DanceCategory.st, context),
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
        StyleCardWidget(
          onStyleClick: () => onStyleClick(DanceCategory.la, context),
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
