import 'package:flutter/material.dart';
import 'package:flutter_formation_pokedex/core/strings.dart';
import 'package:flutter_formation_pokedex/views/widgets/header_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderBar(
        title: Strings.detailScreenTitle,
      ),
      body: Text(Strings.detailScreenTitle),
    );
  }
}
