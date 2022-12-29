import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/app_colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                color: backgroundColor,
                child: Row(
                  children: const [
                    Text('Prodotto'),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
