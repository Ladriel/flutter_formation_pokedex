import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/state/favorite_state.dart';
import 'package:flutter_formation_pokedex/views/screens/favorites/components/favorite_card.dart';
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
            : ListView(
                shrinkWrap: true,
                children: favoritesState.favorites
                    .map(
                      (fav) => FavoriteCard(
                        entry: fav,
                        healthPercent: Random().nextInt(10) / 10,
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
