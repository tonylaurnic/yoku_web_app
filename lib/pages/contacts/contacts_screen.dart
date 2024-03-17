import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                          const Text(
                            'Dove siamo',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          HomePictureWidget(
                            heigtContainer: MediaQuery.of(context).size.height,
                            widithContainer:
                                MediaQuery.of(context).size.width * 0.4,
                            image: 'assets/map.png',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: PresentationDetails(
                        heigtContainer:
                            MediaQuery.of(context).size.height * 1.5,
                        widithContainer:
                            MediaQuery.of(context).size.width * 0.4,
                        title: 'CONTATTI',
                        content:
                            'Viale Aldo Moro 183\n07026 Olbia (SS)\nInformazioni e prenotazioni:\n+39 388 459 8851',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const FooterWidget(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          const NavigationBarWidget(),
        ],
      ),
    );
  }
}
