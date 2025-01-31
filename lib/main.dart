import 'package:flutter/material.dart';
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
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
      title: Strings.appTitle,
      home: const HomeScreen(title: Strings.homeTitle),
    );
  }
}
