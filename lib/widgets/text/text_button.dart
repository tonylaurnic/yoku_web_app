import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  const TextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w100,
        height: 0.9,
        fontSize: 32,
      ),
    );
  }
}
