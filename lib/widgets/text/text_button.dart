import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
            fontWeight: FontWeight.w200,
            letterSpacing: 20,
            height: 0.9,
            fontSize: 30,
            color: Colors.grey.shade500),
      ),
    );
  }
}
