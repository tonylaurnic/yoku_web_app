import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';
import 'package:yoku_web_app/widgets/product/product_card_widget.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class MenuDesktopScreen extends StatefulWidget {
  const MenuDesktopScreen({super.key});

  @override
  State<MenuDesktopScreen> createState() => _MenuDesktopScreenState();
}

class _MenuDesktopScreenState extends State<MenuDesktopScreen> {
  bool selectedValue = false;

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
              !selectedValue
                  ? HomePictureWidget(
                      topPadding: 0,
                      heigtContainer: MediaQuery.of(context).size.height * 0.5,
                      widithContainer: MediaQuery.of(context).size.height * 1.7,
                      image: 'assets/menu.jpg',
                    )
                  : const SizedBox(),
              // : HomePictureWidget(
              //     topPadding: 0,
              //     heigtContainer: MediaQuery.of(context).size.height * 0.2,
              //     widithContainer: MediaQuery.of(context).size.height * 1.7,
              //     image: 'assets/menu.jpg',
              //   ),
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
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: category.length,
                  itemBuilder: (_, index) {
                    final cat = category[index];

                    var prodByCat = product
                        .where((product) => product.category == cat.name)
                        .toList();

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: ExpansionTile(
                        maintainState: true,
                        title: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('${cat.name}'),
                            ],
                          )
                        ]),
                        tilePadding: const EdgeInsets.all(5),
                        expandedCrossAxisAlignment: CrossAxisAlignment.end,
                        iconColor: Colors.grey,
                        textColor: Colors.black,
                        trailing: const SizedBox(),
                        leading: colapsedIndex != index
                            ? const Icon(Icons.add)
                            : const Icon(Icons.remove),
                        key: Key(colapsedIndex.toString()),
                        initiallyExpanded: index == colapsedIndex,
                        onExpansionChanged: (value) {
                          value
                              ? setState(() {
                                  colapsedIndex = index;
                                  selectedValue = true;
                                })
                              : setState(() {
                                  colapsedIndex = -1;
                                  selectedValue = false;
                                });
                        },
                        children: [
                          SizedBox(
                            height: 50 * prodByCat.length.toDouble(),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: prodByCat.length,
                              itemBuilder: (context, index) {
                                return ProductCardWidget(
                                    product: prodByCat[index], index: index);
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
