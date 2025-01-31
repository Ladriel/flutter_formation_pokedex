import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';

class PokedexEntryCard extends StatelessWidget {
  final PokedexEntry entry;
  const PokedexEntryCard({
    super.key,
    required this.entry,
  });
  final double size = 120;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: Card(
        child: Text(entry.name),
      ),
    );
  }
}
