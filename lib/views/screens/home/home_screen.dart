import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/views/screens/pokedex/pokedex_screen.dart';
import 'package:flutter_formation_pokedex/views/widgets/header_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(
        title: Strings.homeTitle,
      ),
      body: PokedexScreen(),
    );
  }
}
