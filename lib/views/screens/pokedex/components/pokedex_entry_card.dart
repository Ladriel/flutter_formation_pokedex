import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/views/screens/detail/detail_screen.dart';

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
          MaterialPageRoute(builder: (context) => const DetailScreen()),
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
