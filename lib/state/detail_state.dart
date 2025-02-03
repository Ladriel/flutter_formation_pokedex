import 'package:flutter/cupertino.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/data/models/pokemon_detail.dart';
import 'package:flutter_formation_pokedex/data/poke_api.dart';
import 'package:flutter_formation_pokedex/data/repository.dart';

class PokemonDetailState with ChangeNotifier {
  final PokedexEntry entry; // input
  bool loading = true;
  String? error;
  PokemonDetail? detail; // output

  PokemonDetailState(this.entry) {
    // input/output
    fetchPokedexEntries();
  }

  fetchPokedexEntries() async {
    try {
      detail = await Repository().getPokemonDetail(entry.name);
    } catch (e) {
      print("error $e");
      error = e.toString();
    }
    loading = false;
    notifyListeners();
  }
}
