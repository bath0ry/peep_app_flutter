import 'package:flutter/material.dart';
import 'package:music_app_flutter/images_assets_home.dart';

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
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35))),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: ImagesAssets(
            imageAsset:
                'assets/images/imagem_2022-09-01_114635591-removebg-preview.png',
            heightImage: 200,
          ),
        ),
      ),
    );
  }
}
