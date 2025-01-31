import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.red,
    ),
    useMaterial3: true,
  );

  static final darkTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.red,
    ),
    useMaterial3: true,
  );
}
