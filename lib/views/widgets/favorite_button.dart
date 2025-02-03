import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final Function callBack;
  const FavoriteButton({
    super.key,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Builder(builder: (context) {
      return IconButton(
        iconSize: 35,
        onPressed: () {
          callBack();
        },
        icon: Icon(Icons.favorite),
        color: theme.colorScheme.primary,
      );
    });
  }
}
