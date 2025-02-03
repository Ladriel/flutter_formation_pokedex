import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_formation_pokedex/core/theme.dart';
import 'package:flutter_formation_pokedex/state/favorite_state.dart';
import 'package:flutter_formation_pokedex/state/pokedex_state.dart';
import 'package:flutter_formation_pokedex/views/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'core/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PokedexState>(
          create: (_) => PokedexState(),
        ),
        ChangeNotifierProvider<FavoritesState>(
          create: (_) => FavoritesState(),
        ),
      ],
      builder: (context, _) => MaterialApp(
        title: Strings.appTitle,
        theme: brightness == Brightness.dark
            ? AppTheme.darkTheme
            : AppTheme.lightTheme,
        home: HomeScreen(title: Strings.homeTitle),
      ),
    );
  }
}
