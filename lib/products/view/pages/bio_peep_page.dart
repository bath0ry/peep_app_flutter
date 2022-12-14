import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_app_flutter/products/utils/constants_bio.dart';
import 'package:music_app_flutter/products/view/components/images_assets_home.dart';

class BioPeepPage extends StatelessWidget {
  const BioPeepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/kindpng_3602003.png',
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              width: 800,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Lil Peep',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        textBioPeeps,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 100,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ImagesAssets(
                          imageAsset:
                              'assets/images/imagem_2022-09-02_205430294-removebg-preview.png',
                          heightImage: 200),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
