import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favorites;
  const FavoritesScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: favorites.isEmpty
          ? Text(Strings.empty)
          : Column(
              children: favorites
                  .map(
                    (fav) => Text(fav),
                  )
                  .toList(),
            ),
    );
  }
}
