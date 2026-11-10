import 'package:flutter/material.dart';
import 'package:want2dance/utils/custom_clipper.dart';

class StyleCardWidget extends StatelessWidget {
  const StyleCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.gradientColors,
    required this.onStyleClick,
  });

  final String title;
  final ImageIcon icon;
  final List<Color> gradientColors;
  final void Function() onStyleClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        shadowColor: Colors.white.withValues(alpha: 0.2),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        child: InkWell(
          splashColor: Colors.white.withValues(alpha: 0.2),
          onTap: onStyleClick,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 35),
                icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
