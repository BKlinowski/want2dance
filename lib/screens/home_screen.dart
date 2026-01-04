import 'package:flutter/material.dart';

import 'package:want2dance/navigation/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appScreens[_selectedPageIndex].label)),
      body: IndexedStack(
        index: _selectedPageIndex,
        children: appScreens.map((s) => s.screen).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedPageIndex,
        indicatorColor: Theme.of(context).colorScheme.outline,
        onDestinationSelected: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        destinations: appScreens.map((s) {
          return NavigationDestination(icon: s.icon, label: s.label);
        }).toList(),
      ),
    );
  }
}
