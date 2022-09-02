import 'package:flutter/material.dart';
import 'package:music_app_flutter/images_assets_home.dart';

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
              const ImagesAssets(
                imageAsset:
                    'assets/images/imagem_2022-09-01_114635591-removebg-preview.png',
                alignmentImage: Alignment.topCenter,
                heightImage: 200,
                paddingImage: EdgeInsets.all(20),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextButtonWidgetsHome(
                      text: 'Top Tracks',
                      colorButton: Color.fromARGB(255, 247, 144, 228),
                    ),
                  ),
                  ImagesAssets(
                      imageAsset:
                          'assets/images/imagem_2022-09-01_151326705-removebg-preview.png',
                      alignmentImage: Alignment.centerRight,
                      heightImage: 400,
                      paddingImage: EdgeInsets.only(left: 3)),
                  ImagesAssets(
                      imageAsset:
                          'assets/images/imagem_2022-09-02_142807564-removebg-preview.png',
                      alignmentImage: Alignment.centerLeft,
                      heightImage: 400,
                      paddingImage: EdgeInsets.only(right: 20, bottom: 20)),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: TextButtonWidgetsHome(
                      text: 'Albums',
                      colorButton: Color.fromARGB(255, 247, 144, 228),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: TextButtonWidgetsHome(
                      text: 'Who is Lil Peep?',
                      colorButton: Color.fromARGB(255, 247, 144, 228),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
