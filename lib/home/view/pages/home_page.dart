import 'package:flutter/material.dart';
import 'package:music_app_flutter/products/view/components/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 137, 173),
        body: SingleChildScrollView(
          child: HomePageWidgets(),
        ),
      ),
    );
  }
}
