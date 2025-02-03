import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
import 'package:flutter_formation_pokedex/data/poke_api.dart';
import 'package:flutter_formation_pokedex/data/repository.dart';

class PokedexState with ChangeNotifier {
  bool loading = true;
  String? error;
  List<PokedexEntry> entries = <PokedexEntry>[];

  PokedexState() {
    fetchPokedexEntries();
  }

  fetchPokedexEntries() async {
    // loading true by default
    Repository repository = Repository();
    try {
      entries = await repository.getPokedexEntries();
    } catch (e) {
      print("error $e");
      error = e.toString();
    }
    loading = false;
    notifyListeners();
  }
}
