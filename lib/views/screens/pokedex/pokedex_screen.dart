import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/exceptions.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/data/poke_api.dart';
import 'package:flutter_formation_pokedex/data/repository.dart';
import 'package:flutter_formation_pokedex/views/screens/pokedex/components/pokedex_entry_card.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  bool loading = true;
  String? error;
  List<PokedexEntry> entries = <PokedexEntry>[];

  @override
  void initState() {
    super.initState();
    Repository repository = Repository(pokemonAPIClient: PokeAPIClient());
    try {
      //throw NetworkException(code: 500, message: "Kaboom");
      repository.getPokedexEntries().then(
            (value) => setState(
              () {
                loading = false;
                entries = value;
                // entries = [];
              },
            ),
          );
    } catch (e) {
      print("error $e");
      setState(
        () {
          loading = false;
          error = e.toString();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: loading
          ? CircularProgressIndicator()
          : error != null
              ? Text(error ?? "Whoops")
              : entries.isEmpty
                  ? Text(Strings.empty)
                  : Column(
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
