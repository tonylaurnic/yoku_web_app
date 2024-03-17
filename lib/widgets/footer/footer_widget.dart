import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveValue(
        context,
        defaultVal: 1200,
        tabletVal: null,
        mobileVal: null,
        desktopVal: 300,
      ),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).isDesktop
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowMainAxisAlignment: MainAxisAlignment.center,
        rowCrossAxisAlignment: CrossAxisAlignment.stretch,
        columnMainAxisAlignment: MainAxisAlignment.center,
        columnPadding: const EdgeInsets.symmetric(horizontal: 10),
        columnMainAxisSize: MainAxisSize.min,
        children: const [
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            child: FooterItem(
              title: 'DOVE SIAMO',
              subtitle: 'VIALE ALDO MORO',
              desc1: '183',
              desc2: 'OLBIA',
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            child: FooterItem(
              title: 'ORARI DI APERTURA',
              subtitle: 'DA LUMEDI A DOMENICA',
              desc1: 'PRANZO 11.30 - 15.00',
              desc2: 'CENA 18.30 - 23.00',
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            child: FooterItem(
              title: 'CONTATTI',
              subtitle: '+39 388 459 8851',
              desc1: '',
              desc2: '',
            ),
          ),
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
      height: responsiveValue(
        context,
        defaultVal: 300,
        tabletVal: 200,
        mobileVal: 150,
        desktopVal: 400,
      ),
      width: responsiveValue(
        context,
        defaultVal: 200,
        tabletVal: 200,
        mobileVal: 200,
        desktopVal: 300,
      ),
      child: Card(
        color: footerColor.withOpacity(0.7),
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              textAlign: TextAlign.center,
              title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: responsiveValue(
                  context,
                  defaultVal: 30,
                  tabletVal: 20,
                  mobileVal: 15,
                  desktopVal: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subtitle!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: responsiveValue(
                    context,
                    defaultVal: 18,
                    tabletVal: 14,
                    mobileVal: 10,
                    desktopVal: 20,
                  )),
            ),
            Text(
              desc1!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: responsiveValue(
                  context,
                  defaultVal: 20,
                  tabletVal: 14,
                  mobileVal: 10,
                  desktopVal: 18,
                ),
              ),
            ),
            Text(
              desc2!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: responsiveValue(
                  context,
                  defaultVal: 20,
                  tabletVal: 15,
                  mobileVal: 10,
                  desktopVal: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
