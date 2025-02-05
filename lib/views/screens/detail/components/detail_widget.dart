import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokemon_detail.dart';
import 'package:flutter_formation_pokedex/views/widgets/image_with_placeholder.dart';
import 'package:flutter_formation_pokedex/views/widgets/name_widget.dart';

class DetailWidget extends StatelessWidget {
  final PokemonDetail detail;
  const DetailWidget({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: NameWidget(
              name: detail.name,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: detail.types
                  .map((child) => Image.asset(
                        'assets/${child.type.name}.png',
                        fit: BoxFit.contain,
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                ImageWithPlaceholder(
                  url: detail.artwork,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
