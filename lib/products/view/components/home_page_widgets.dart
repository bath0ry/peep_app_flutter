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
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        HomePageBar(),
        const SizedBox(
          height: 80,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              child: TextButtonWidgetsHome(
                text: 'Top Tracks',
                colorButton: Color.fromARGB(255, 247, 144, 228),
                textSize: 35,
                pageRouteName: 'top_tracks_page',
              ),
            ),
            SizedBox(
              width: size.width / 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: ImagesAssets(
                  imageAsset:
                      'assets/images/imagem_2022-09-01_151326705-removebg-preview.png',
                  heightImage: 400,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: ImagesAssets(
                  imageAsset:
                      'assets/images/imagem_2022-09-02_142807564-removebg-preview.png',
                  heightImage: 403,
                ),
              ),
            ),
            SizedBox(
              width: size.width / 2,
              child: TextButtonWidgetsHome(
                text: 'Albums',
                colorButton: Color.fromARGB(255, 247, 144, 228),
                textSize: 35,
                pageRouteName: 'albums_page',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: const ImagesAssets(
                  imageAsset:
                      'assets/images/imagem_2022-09-02_174148798-removebg-preview.png',
                  heightImage: 134,
                ),
              ),
            ),
            SizedBox(
              width: size.width / 2,
              child: Align(
                alignment: Alignment.bottomRight,
                child: ImagesAssets(
                  imageAsset:
                      'assets/images/imagem_2022-09-02_173058463-removebg-preview.png',
                  heightImage: 134,
                ),
              ),
            ),
          ],
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
