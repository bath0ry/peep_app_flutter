import 'package:flutter/material.dart';
import 'package:music_app_flutter/products/view/components/images_assets_home.dart';

class HomePageBar extends StatelessWidget {
  const HomePageBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: const Center(
        child: ImagesAssets(
          imageAsset:
              'assets/images/imagem_2022-09-04_135700474-removebg-preview.png',
          heightImage: 350,
        ),
      ),
    );
  }
}
