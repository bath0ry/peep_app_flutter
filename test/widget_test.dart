// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_app_flutter/home/view/pages/home_page.dart';
import 'package:music_app_flutter/products/utils/constants_bio.dart';
import 'package:music_app_flutter/products/view/components/images_assets_home.dart';
import 'package:music_app_flutter/products/view/pages/bio_peep_page.dart';
import 'package:music_app_flutter/products/view/pages/top_tracks_page.dart';

void main() {
  testWidgets('Widget has top track text ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    final trackFinder = find.text('Top Tracks');
    // Verify that our counter starts at 0.
    expect(trackFinder, findsOneWidget);
  });
  testWidgets('Widget has Lil Peep text ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: BioPeepPage(),
    ));
    final bioFinder = find.text('Lil Peep');
    // Verify that our counter starts at 0.
    expect(bioFinder, findsOneWidget);
  });

  testWidgets('Widget has bio image asset', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BioPeepPage(),
    ));
    expect(find.image(AssetImage('assets/images/kindpng_3602003.png')),
        findsOneWidget);
  });
  testWidgets('Widget has Bio Peep constraints text ',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: BioPeepPage(),
    ));
    final bioTextFinder = find.text(textBioPeeps);
    // Verify that our counter starts at 0.
    expect(bioTextFinder, findsOneWidget);
  });
  testWidgets('Widget has image asset', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ImagesAssets(
        heightImage: 0,
        imageAsset: '',
      ),
    ));
    expect(
        find.byWidget(ImagesAssets(
            imageAsset:
                'assets/images/imagem_2022-09-02_205430294-removebg-preview.png',
            heightImage: 200)),
        findsOneWidget);
  });
}
