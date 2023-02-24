// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_app_flutter/home/view/pages/home_page.dart';

void main() {
  testWidgets('Widget has top track ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    final trackFinder = find.text('Top Tracks');
    // Verify that our counter starts at 0.
    expect(trackFinder, findsOneWidget);
  });
  testWidgets('Widget has Lil Peep ', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
    ));
    final bioFinder = find.text('VTNC bolsonaro');
    // Verify that our counter starts at 0.
    expect(bioFinder, findsOneWidget);
  });
}
