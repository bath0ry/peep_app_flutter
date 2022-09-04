import 'package:flutter/material.dart';

class ImagesAssets extends StatelessWidget {
  final String imageAsset;

  final double heightImage;

  const ImagesAssets({
    Key? key,
    required this.imageAsset,
    required this.heightImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageAsset,
      height: heightImage,
    );
  }
}
