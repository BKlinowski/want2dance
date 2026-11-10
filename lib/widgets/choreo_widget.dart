import 'package:flutter/material.dart';
import 'package:want2dance/widgets/step_style_widget.dart';

class ChoreoWidget extends StatelessWidget {
  const ChoreoWidget({
    super.key,
    required this.choreoName,
    required this.onChoreoClick,
  });

  final String choreoName;
  final void Function() onChoreoClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.white.withValues(alpha: 0.2),
      // clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      // elevation: 10,
      child: InkWell(
        splashColor: Colors.white.withValues(alpha: 0.2),
        onTap: onChoreoClick,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: Row(
            children: [
              Text(
                choreoName,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
