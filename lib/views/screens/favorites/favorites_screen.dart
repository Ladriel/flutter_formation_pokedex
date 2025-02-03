import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/state/favorite_state.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // could use Provider.of
    return Consumer<FavoritesState>(
      builder: (context, favoritesState, _) => Center(
        child: favoritesState.favorites.isEmpty
            ? Text(Strings.empty)
            : Column(
                children: favoritesState.favorites
                    .map(
                      (fav) => Text(fav.name),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
