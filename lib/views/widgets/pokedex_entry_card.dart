import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';

class PokedexEntryCard extends StatelessWidget {
  final PokedexEntry entry;
  const PokedexEntryCard({
    super.key,
    required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(entry.name),
    );
  }
}
