import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/app_colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          FooterItem(
            title: 'DOVE SIAMO',
            subtitle: 'VIALE ALDO MORO',
            desc1: '183',
            desc2: 'OLBIA',
          ),
          FooterItem(
            title: 'ORARI DI APERTURA',
            subtitle: 'DA LUMEDI A DOMENICA',
            desc1: 'PRANZO 11.30 - 15.00',
            desc2: 'CENA 18.30 - 23.00',
          ),
          FooterItem(
            title: 'CONTATTI',
            subtitle: '+39 388 459 8851',
            desc1: '',
            desc2: '',
          ),
          // FooterItem(
          //   title: 'DOVE SIAMO',
          //   subtitle: 'VIALE ALDO MORO',
          //   desc1: '183',
          //   desc2: 'OLBIA',
          // ),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  const FooterItem({
    Key? key,
    this.title,
    this.subtitle,
    this.desc1,
    this.desc2,
  }) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? desc1;
  final String? desc2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Card(
        color: footerColor.withOpacity(0.7),
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              subtitle!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              desc1!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              desc2!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
