import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> tabs;
  const BottomBar(
      {super.key,
      required this.currentIndex,
      required this.onTap,
      required this.tabs});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BottomNavigationBar(
      items: tabs,
      onTap: onTap,
      currentIndex: currentIndex,
      backgroundColor: theme.colorScheme.secondaryContainer,
      selectedItemColor: theme.colorScheme.onSecondaryContainer,
      selectedFontSize: 16,
      unselectedItemColor: theme.colorScheme.onSecondaryContainer.withAlpha(75),
    );
  }
}
