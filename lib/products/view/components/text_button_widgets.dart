// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextButtonWidgetsHome extends StatelessWidget {
  final String text;
  final Color colorButton;
  final double textSize;
  final String pageRouteName;
  const TextButtonWidgetsHome({
    Key? key,
    required this.text,
    required this.colorButton,
    required this.textSize,
    required this.pageRouteName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(pageRouteName);
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 21, 21, 21)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: textSize,
                  color: colorButton,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
