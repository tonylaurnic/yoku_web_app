import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<String> items = [
    '1 persona',
    '2 persone',
    '3 persone',
    '4 persone',
    '5 persone',
    '6 persone',
    '7 persone',
    '8 persone',
  ];
  String? selectedValue;
  bool isColapsed = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        backgroundColor: Colors.white.withOpacity(0.7),
        body: Stack(
          children: [
            CentredView(
              child: Column(
                children: [
                  const SizedBox(height: 120),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        //category
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: ExpansionTile(
                                onExpansionChanged: (value) {
                                  isColapsed = value;

                                  setState(() {});
                                },
                                tilePadding: const EdgeInsets.all(5),
                                iconColor: Colors.grey,
                                textColor: Colors.black,
                                title: isColapsed
                                    ? Container(
                                        height: 120,
                                        decoration: const BoxDecoration(
                                          color: backgroundColor,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/plate.PNG',
                                            ),
                                          ),
                                        ),
                                        child: const Text('CategoryName'),
                                      )
                                    : const Text('Category Name'),
                                trailing: const SizedBox(),
                                leading: const Icon(Icons.add),
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        // products
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text('Hoso Maki'),
                                            Text(' //Description'),
                                            Text('3.00'),
                                          ],
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                        // Card(
                        //   color: backgroundColor,
                        //   child: Row(
                        //     children: const [
                        //       Text('Prodotto'),
                        //     ],
                        //   ),
                        // );
                      },
                    ),
                  )
                ],
              ),
            ),
            const MyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
