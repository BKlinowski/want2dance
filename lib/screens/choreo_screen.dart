import 'package:flutter/material.dart';
import 'package:want2dance/widgets/choreo_card_widget.dart';

class ChoreoScreen extends StatefulWidget {
  const ChoreoScreen({super.key, required this.choreos});
  final List<ChoreoStyleWidget> choreos;

  @override
  State<ChoreoScreen> createState() {
    return _ChoreScreenState();
  }
}

class _ChoreScreenState extends State<ChoreoScreen> {
  late List<ChoreoStyleWidget> choreos;

  @override
  void initState() {
    super.initState();
    choreos = List.of(widget.choreos);
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      itemBuilder: (context, index) {
        return choreos[index];
      },
      itemCount: widget.choreos.length,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) newIndex--;
          final ChoreoStyleWidget choreo = choreos.removeAt(oldIndex);
          choreos.insert(newIndex, choreo);
        });
      },
    );
  }
}
