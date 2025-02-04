import 'package:flutter/material.dart';

class ImageWithPlaceholder extends StatelessWidget {
  final String url;
  const ImageWithPlaceholder({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.contain,
      alignment: Alignment.center,
      frameBuilder: (BuildContext context, Widget child, int? frame,
          bool wasSynchronouslyLoaded) {
        return frame != null
            ? child
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/pokeball.png',
                  fit: BoxFit.contain,
                ),
              );
      },
    );
  }
}
