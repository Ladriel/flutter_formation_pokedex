import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/views/screens/favorites/favorites_screen.dart';
import 'package:flutter_formation_pokedex/views/screens/pokedex/pokedex_screen.dart';
import 'package:flutter_formation_pokedex/views/widgets/bottom_bar.dart';
import 'package:flutter_formation_pokedex/views/widgets/header_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.title});

  final String title;
  final tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.list), label: Strings.pokedexTab),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite), label: Strings.favoriteTab),
  ];
  final screens = [
    PokedexScreen(),
    FavoritesScreen(),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<String> favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(
        title: widget.tabs[currentIndex].label ?? "Default",
      ),
      body: DefaultTabController(
        length: widget.screens.length,
        child: IndexedStack(
          index: currentIndex,
          children: widget.screens,
        ),
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        tabs: widget.tabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
