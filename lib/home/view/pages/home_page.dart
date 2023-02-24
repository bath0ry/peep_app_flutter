import 'package:flutter/material.dart';
import 'package:music_app_flutter/products/view/components/home_page_widgets.dart';
import 'package:music_app_flutter/products/view/pages/albums_page.dart';
import 'package:music_app_flutter/products/view/pages/bio_peep_page.dart';
import 'package:music_app_flutter/products/view/pages/top_tracks_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 137, 173),
        body: ListView(children: [
          HomePageWidgets(),
          BioPeepPage(),
          AlbumsPage(),
          TopTracksPage()
        ]),
      ),
    );
  }
}
