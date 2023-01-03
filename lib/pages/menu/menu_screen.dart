import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/app_colors.dart';

import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:yoku_web_app/widgets/product/product_card_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String? selectedValue;
  bool isColapsed = false;

  int colapsedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var product = productController.products;
    var category = categoryController.category;
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
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                        isColapsed = colapsedIndex == index;
                        //category
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: ExpansionTile(
                                key: Key(colapsedIndex.toString()),
                                initiallyExpanded: index == colapsedIndex,
                                onExpansionChanged: (value) {
                                  setState(() {
                                    isColapsed = colapsedIndex == index;
                                    colapsedIndex = index;
                                  });
                                },
                                tilePadding: const EdgeInsets.all(5),
                                iconColor: Colors.grey,
                                textColor: Colors.black,
                                title: isColapsed
                                    ? Container(
                                        height: 120,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              category[index].imageUrl,
                                            ),
                                          ),
                                        ),
                                        // child: const Text(''),
                                      )
                                    : Text(category[index].name),
                                trailing: const SizedBox(),
                                leading: const Icon(Icons.add),
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      itemCount: productController
                                          .categoryProducts(category[index])
                                          .length,
                                      itemBuilder: (context, index) {
                                        return ProductCardWidget(
                                          product: product[index],
                                          index: index,
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
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
