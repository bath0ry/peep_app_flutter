import 'package:flutter/material.dart';
import 'package:music_app_flutter/products/view/components/home_page_bar.dart';
import 'package:music_app_flutter/products/view/components/images_assets_home.dart';
import 'package:music_app_flutter/products/view/components/text_button_widgets.dart';

class HomePageWidgets extends StatelessWidget {
  const HomePageWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          child: HomePageBar(),
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
                  pageRouteName: 'top_tracks_page',
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
                  pageRouteName: 'albums_page',
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
            pageRouteName: 'bio_peep',
          ),
        ),
        const ImagesAssets(
          imageAsset:
              'assets/images/imagem_2022-09-02_165901495-removebg-preview.png',
          heightImage: 100,
        ),
      ],
    );
  }
}
