// ignore_for_file: file_names

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
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 21, 21, 21)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 30,
                color: colorButton,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
