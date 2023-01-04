import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';
import 'package:yoku_web_app/widgets/product/product_card_widget.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class MenuDesktopScreen extends StatefulWidget {
  const MenuDesktopScreen({super.key});

  @override
  State<MenuDesktopScreen> createState() => _MenuDesktopScreenState();
}

class _MenuDesktopScreenState extends State<MenuDesktopScreen> {
  String? selectedValue;

  bool isColapsed = false;

  int colapsedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var product = productController.products;
    var category = categoryController.category;
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: const SizedBox(),
        desktop: SizedBox(
          height: 2000,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              HomePictureWidget(
                topPadding: 0,
                heigtContainer: MediaQuery.of(context).size.height * 0.5,
                widithContainer: MediaQuery.of(context).size.height * 1.7,
                image: 'assets/menu.jpg',
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButtonWidget(
                  text: 'MENU',
                  colour: Colors.black,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    isColapsed = colapsedIndex == index;
                    //category
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: ExpansionTile(
                            key: Key(colapsedIndex.toString()),
                            initiallyExpanded: index == colapsedIndex,
                            onExpansionChanged: (value) {
                              value
                                  ? setState(() {
                                      colapsedIndex = index;
                                    })
                                  : setState(() {
                                      colapsedIndex = -1;
                                    });
                            },
                            tilePadding: const EdgeInsets.all(5),
                            iconColor: Colors.grey,
                            textColor: Colors.black,
                            title: Text(category[index].name),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
