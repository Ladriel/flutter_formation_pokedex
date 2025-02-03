import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/state/detail_state.dart';
import 'package:flutter_formation_pokedex/state/favorite_state.dart';
import 'package:flutter_formation_pokedex/views/screens/detail/detail_screen.dart';
import 'package:flutter_formation_pokedex/views/widgets/favorite_button.dart';
import 'package:provider/provider.dart';

class PokedexEntryCard extends StatelessWidget {
  final PokedexEntry entry;
  const PokedexEntryCard({
    super.key,
    required this.entry,
  });
  final double size = 120;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (_) => PokemonDetailState(entry),
              child: DetailScreen(),
            ),
          ),
        );
      },
      child: SizedBox(
        height: size,
        child: Card(
          child: Text(entry.name),
        ),
      ),
    );
  }
}
