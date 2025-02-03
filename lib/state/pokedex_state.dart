import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';

class PokedexState with ChangeNotifier {
  bool loading = true;
  String? error;
  List<PokedexEntry> entries = <PokedexEntry>[];

  PokedexState();

  fetch() {
    //TODO
  }
}
