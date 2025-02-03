import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/views/screens/detail/detail_screen.dart';
import 'package:flutter_formation_pokedex/views/widgets/favorite_button.dart';

class PokedexEntryCard extends StatelessWidget {
  final PokedexEntry entry;
  final Function(String) onFavTap;
  const PokedexEntryCard({
    super.key,
    required this.entry,
    required this.onFavTap,
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
          child: Row(
            children: [
              FavoriteButton(callBack: () {
                onFavTap(entry.name);
              }),
              Text(entry.name),
            ],
          ),
        ),
      ),
    );
  }
}
