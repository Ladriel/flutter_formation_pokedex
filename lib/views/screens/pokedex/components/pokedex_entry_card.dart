import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/state/detail_state.dart';
import 'package:flutter_formation_pokedex/views/screens/detail/detail_screen.dart';
import 'package:flutter_formation_pokedex/views/widgets/image_with_placeholder.dart';
import 'package:flutter_formation_pokedex/views/widgets/name_widget.dart';
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
          child: _buildCard(context, entry),
        ),
      ),
    );
  }

  _buildCard(BuildContext context, PokedexEntry entry) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            top: 1,
            left: 1,
            child: CircleAvatar(
              maxRadius: 20,
              child: Text(entry.number.toString()),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageWithPlaceholder(
                url: entry.sprite,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: NameWidget(name: entry.name, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
