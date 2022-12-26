import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
          fontWeight: FontWeight.w100,
          letterSpacing: 12,
          height: 0.9,
          fontSize: 38,
          color: Colors.grey.shade500),
    );
  }
}
