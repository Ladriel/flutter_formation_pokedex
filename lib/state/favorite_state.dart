import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/data/models/pokedex_entry.dart';
//import 'package:provider/provider.dart';

class FavoritesState with ChangeNotifier {
  List<String> _favorites = [];

  List<String> get favorites => _favorites;

  set favorites(List<String> value) {
    _favorites = value;
    notifyListeners();
  }

  addFavorite(String name) {
    if (!isFavorite(name)) {
      _favorites.add(name);
      notifyListeners();
    }
  }

  removeFavorite(String value) {
    if (isFavorite(value)) {
      _favorites.remove(value);
      notifyListeners();
    }
  }

  isFavorite(String value) {
    return _favorites.contains(value);
  }

  void addOrRemoveFavorite(String name) {
    if (isFavorite(name)) {
      removeFavorite(name);
    } else {
      addFavorite(name);
    }
  }
}
