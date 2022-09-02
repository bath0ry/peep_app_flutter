import 'package:flutter/material.dart';

class ImagesAssets extends StatelessWidget {
  final String imageAsset;
  final AlignmentGeometry alignmentImage;
  final double heightImage;
  final EdgeInsetsGeometry paddingImage;
  const ImagesAssets({
    Key? key,
    required this.imageAsset,
    required this.alignmentImage,
    required this.heightImage,
    required this.paddingImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          child: Image.asset(
            imageAsset,
            alignment: alignmentImage,
            height: heightImage,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
