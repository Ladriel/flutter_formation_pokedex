import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  final String name;
  final double fontSize;
  const NameWidget({super.key, required this.name, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      "${name[0].toUpperCase()}${name.substring(1)}",
      style: TextStyle(
        fontSize: fontSize,
        color: theme.colorScheme.onSurface,
      ),
    );
  }
}
