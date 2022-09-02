import 'package:flutter/material.dart';

class TextButtonWidgetsHome extends StatelessWidget {
  final String text;
  final Color colorButton;
  const TextButtonWidgetsHome({
    Key? key,
    required this.text,
    required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(primary: colorButton),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
