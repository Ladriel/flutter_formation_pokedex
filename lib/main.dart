import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_formation_pokedex/core/theme.dart';
import 'package:flutter_formation_pokedex/views/screens/home/home_screen.dart';

import 'core/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return MaterialApp(
      title: Strings.appTitle,
      theme: brightness == Brightness.dark
          ? AppTheme.darkTheme
          : AppTheme.lightTheme,
      home: HomeScreen(title: Strings.homeTitle),
    );
  }
}
