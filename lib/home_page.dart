import 'package:flutter/material.dart';

import 'TextButtonWidgetHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImagesAssets(
                imageAsset:
                    'assets/images/imagem_2022-09-01_114635591-removebg-preview.png',
              ),
              Column(
                children: const [
                  TextButtonWidgetsHome(
                    text: 'Top Tracks',
                    colorButton: Color.fromARGB(255, 252, 168, 196),
                  ),
                  TextButtonWidgetsHome(
                    text: 'Albums',
                    colorButton: Color.fromARGB(255, 247, 154, 185),
                  ),
                  TextButtonWidgetsHome(
                    text: 'Who is Lil Peep?',
                    colorButton: Color.fromARGB(255, 247, 154, 185),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImagesAssets extends StatelessWidget {
  final String imageAsset;

  const ImagesAssets({
    Key? key,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        child: Image.asset(
          imageAsset,
          alignment: Alignment.topCenter,
          height: 200,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
