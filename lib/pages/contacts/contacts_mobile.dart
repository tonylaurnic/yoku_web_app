import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class ContactsMobile extends StatelessWidget {
  const ContactsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 140),
            const Text(
              'Dove siamo',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            HomePictureWidget(
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.height * 0.7,
              image: 'assets/map.png',
            ),
            PresentationDetails(
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.width,
              title: 'CONTATTI',
              content:
                  'Viale Aldo Moro 183\n07026 Olbia (SS)\nInformazioni e prenotazioni:\n+39 388 459 8851',
            ),
            const SizedBox(height: 50),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
