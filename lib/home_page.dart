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
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
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
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 5),
                      child: TextButtonWidgetsHome(
                        text: 'Top Tracks',
                        colorButton: Color.fromARGB(255, 247, 144, 228),
                        textSize: 35,
                      ),
                    ),
                    ImagesAssets(
                      imageAsset:
                          'assets/images/imagem_2022-09-01_151326705-removebg-preview.png',
                      heightImage: 400,
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  children: const [
                    ImagesAssets(
                      imageAsset:
                          'assets/images/imagem_2022-09-02_142807564-removebg-preview.png',
                      heightImage: 406,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                      ),
                      child: TextButtonWidgetsHome(
                        text: 'Albums',
                        colorButton: Color.fromARGB(255, 247, 144, 228),
                        textSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              FittedBox(
                child: Row(
                  children: [
                    const ImagesAssets(
                      imageAsset:
                          'assets/images/imagem_2022-09-02_174148798-removebg-preview.png',
                      heightImage: 134,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        ImagesAssets(
                          imageAsset:
                              'assets/images/imagem_2022-09-02_173058463-removebg-preview.png',
                          heightImage: 134,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: TextButtonWidgetsHome(
                  text: 'Who is Lil Peep?',
                  colorButton: Color.fromARGB(255, 247, 144, 228),
                  textSize: 35,
                ),
              ),
              const ImagesAssets(
                imageAsset:
                    'assets/images/imagem_2022-09-02_165901495-removebg-preview.png',
                heightImage: 100,
              ),
              const Text(
                'github: bath0ry',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 247, 144, 228)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
