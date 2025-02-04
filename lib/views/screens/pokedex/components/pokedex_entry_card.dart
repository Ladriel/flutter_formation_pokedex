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
          child: _buildCard(context, entry),
        ),
      ),
    );
  }

  _buildCard(BuildContext context, PokedexEntry entry) {
    ThemeData theme = Theme.of(context);

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
              child: Image.network(
                entry.sprite,
                fit: BoxFit.contain,
                frameBuilder: (BuildContext context, Widget child, int? frame,
                    bool wasSynchronouslyLoaded) {
                  return frame != null
                      ? child
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/pokeball.png',
                            fit: BoxFit.contain,
                          ),
                        );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Text(
              "${entry.name[0].toUpperCase()}${entry.name.substring(1)}",
              style: TextStyle(
                fontSize: 15,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
