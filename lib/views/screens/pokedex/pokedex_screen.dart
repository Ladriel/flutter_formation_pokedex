import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/views/screens/pokedex/components/pokedex_entry_card.dart';

class PokedexScreen extends StatelessWidget {
  PokedexScreen({super.key});

  final List<PokedexEntry> entries = <PokedexEntry>[
    PokedexEntry(name: "Bulbizarre", number: 1, sprite: "1.png"),
    PokedexEntry(name: "Salamèche", number: 4, sprite: "4.png"),
    PokedexEntry(name: "Carapuce", number: 7, sprite: "7.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: entries
                  .map(
                    (entry) => PokedexEntryCard(entry: entry),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
