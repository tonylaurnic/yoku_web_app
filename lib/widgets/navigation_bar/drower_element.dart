import 'package:flutter/material.dart';

class DrowerElement extends StatelessWidget {
  const DrowerElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
