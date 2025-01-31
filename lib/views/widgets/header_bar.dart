import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const HeaderBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: theme.colorScheme.onPrimaryContainer),
      ),
      backgroundColor: theme.colorScheme.primaryContainer,
      iconTheme: IconThemeData(
        color: theme.colorScheme.onPrimaryContainer,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
