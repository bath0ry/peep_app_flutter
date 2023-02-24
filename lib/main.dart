import 'package:flutter/material.dart';
import 'package:music_app_flutter/home/view/pages/home_page.dart';
import 'package:music_app_flutter/products/view/components/home_page_widgets.dart';

import 'package:music_app_flutter/products/view/pages/albums_page.dart';
import 'package:music_app_flutter/products/view/pages/bio_peep_page.dart';

import 'package:music_app_flutter/products/view/pages/top_tracks_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'bio_peep': (context) => BioPeepPage(),
        'albums_page': (context) => AlbumsPage(),
        'top_tracks_page': (context) => TopTracksPage()
      },
      title: 'MusicPeep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
