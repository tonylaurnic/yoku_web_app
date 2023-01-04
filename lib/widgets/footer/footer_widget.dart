import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/app_colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SizedBox(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height * 1.9,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      ),
      desktop: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlingment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.center
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 10
              : 16;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 9
              : 14;

      double widithBox =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.width * 0.8
              : MediaQuery.of(context).size.width * 0.28;
      double heightBox =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? MediaQuery.of(context).size.height * 0.2
              : MediaQuery.of(context).size.height * 0.23;

      return SizedBox(
        height: heightBox,
        width: widithBox,
        child: Card(
          color: footerColor.withOpacity(0.7),
          elevation: 0,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                textAlign: textAlingment,
                title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: titleSize,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subtitle!,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
              ),
              Text(
                desc1!,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
              ),
              Text(
                desc2!,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: descriptionSize),
              ),
            ],
          ),
        ),
      );
    });
  }
}
