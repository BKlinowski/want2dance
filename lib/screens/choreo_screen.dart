import 'package:flutter/material.dart';
import 'package:want2dance/models/dance_style.dart';
import 'package:want2dance/widgets/choreo_widget.dart';

class ChoreoScreen extends StatefulWidget {
  const ChoreoScreen({super.key, required this.danceCategory});
  final DanceCategory danceCategory;

  @override
  State<ChoreoScreen> createState() {
    return _ChoreScreenState();
  }
}

class _ChoreScreenState extends State<ChoreoScreen> {
  void _onChoreoClick(int choreoId) {
    //switch screen to choreo
  }

  @override
  Widget build(BuildContext context) {
    List<ChoreoWidget> choreos = [
      ChoreoWidget(choreoName: "Samba", onChoreoClick: () => _onChoreoClick(1)),
      ChoreoWidget(
        choreoName: "Cha-cha",
        onChoreoClick: () => _onChoreoClick(2),
      ),
    ];
    return ReorderableListView.builder(
      itemBuilder: (context, index) {
        return choreos[index];
      },
      itemCount: choreos.length,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) newIndex--;
          final ChoreoWidget choreo = choreos.removeAt(oldIndex);
          choreos.insert(newIndex, choreo);
        });
      },
    );
  }
}
