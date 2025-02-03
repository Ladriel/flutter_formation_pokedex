import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/state/detail_state.dart';
import 'package:flutter_formation_pokedex/views/widgets/header_bar.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailState = Provider.of<PokemonDetailState>(context);
    final detail = detailState.detail;
    return Scaffold(
      appBar: const HeaderBar(
        title: Strings.detailScreenTitle,
      ),
      body: Center(
        child: detailState.loading
            ? CircularProgressIndicator()
            : detailState.error != null
                ? Text(detailState.error ?? "Whoops")
                : Text(detail != null ? detail.name : Strings.empty),
      ),
    );
  }
}
