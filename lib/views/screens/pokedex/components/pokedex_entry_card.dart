import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/state/detail_state.dart';
import 'package:flutter_formation_pokedex/views/screens/detail/detail_screen.dart';
import 'package:provider/provider.dart';

class PokedexEntryCard extends StatelessWidget {
  final double size;
  final PokedexEntry entry;

  const PokedexEntryCard({
    super.key,
    required this.entry,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (_) => PokemonDetailState(entry),
                child: DetailScreen(
                  entry: entry,
                ),
              ),
            ),
          );
        },
        child: Card(
          child: Text(entry.name),
        ),
      ),
    );
  }
}
