import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/state/pokedex_state.dart';
import 'package:flutter_formation_pokedex/views/screens/pokedex/components/pokedex_entry_card.dart';
import 'package:provider/provider.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pokedexState = Provider.of<PokedexState>(context);
    return Center(
      child: pokedexState.loading
          ? CircularProgressIndicator()
          : pokedexState.error != null
              ? Text(pokedexState.error ?? "Whoops")
              : pokedexState.entries.isEmpty
                  ? Text(Strings.empty)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            children: pokedexState.entries
                                .map(
                                  (entry) => PokedexEntryCard(
                                    entry: entry,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
    );
  }
}
