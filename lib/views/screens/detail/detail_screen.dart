import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/state/detail_state.dart';
import 'package:flutter_formation_pokedex/state/favorite_state.dart';
import 'package:flutter_formation_pokedex/views/widgets/favorite_button.dart';
import 'package:flutter_formation_pokedex/views/widgets/header_bar.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  final PokedexEntry entry;
  const DetailScreen({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    final detailState = Provider.of<PokemonDetailState>(context);
    final favoriteState = Provider.of<FavoritesState>(context);
    final detail = detailState.detail;
    return Scaffold(
      appBar: const HeaderBar(
        title: Strings.detailScreenTitle,
      ),
      body: Center(
        child: detailState.loading
            ? CircularProgressIndicator()
            : detailState.error != null
                ? Text(detailState.error ?? "Whoops")
                : detail != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(detail.name),
                          FavoriteButton(
                            callBack: () {
                              favoriteState.addOrRemoveFavorite(entry);
                            },
                            isFavorite: favoriteState.isFavorite(entry),
                          ),
                        ],
                      )
                    : Text(Strings.empty),
      ),
    );
  }
}
