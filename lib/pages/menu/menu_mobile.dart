import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';
import 'package:yoku_web_app/widgets/product/product_card_widget.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class MenuMobileScreen extends StatefulWidget {
  const MenuMobileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuMobileScreen> createState() => _MenuMobileScreenState();
}

class _MenuMobileScreenState extends State<MenuMobileScreen> {
  // final GlobalKey expansionTile = GlobalKey();
  final GlobalKey expansionTileKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  bool selectedValue = false;

  bool isColapsed = false;
  int colapsedIndex = -1;

  // void _scrollToSelectedContent(GlobalKey expansionTileKey) {
  //   final keyContext = expansionTileKey.currentContext;
  //   if (keyContext != null) {
  //     Future.delayed(const Duration(milliseconds: 200)).then((value) {
  //       Scrollable.ensureVisible(keyContext,
  //           duration: const Duration(milliseconds: 200));
  //     });
  //   }
  // }

  onListExpansionChanged(bool expanded) {
    //returns if it was expanded (true) or collapsed (false)
    if (expanded) {
      final keyContext = expansionTileKey.currentContext;

      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(keyContext!,
            duration: const Duration(milliseconds: 200));
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController;
  }

  @override
  Widget build(BuildContext context) {
    var product = productController.products;
    var category = categoryController.category;
    return SingleChildScrollView(
      // controller: _scrollController,
      reverse: false,
      child: ScreenTypeLayout(
        mobile: SizedBox(
          height: 2500,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !selectedValue
                  ? HomePictureWidget(
                      topPadding: 120,
                      heigtContainer: MediaQuery.of(context).size.height * 0.4,
                      widithContainer: MediaQuery.of(context).size.height * 1.7,
                      image: 'assets/menu.jpg',
                    )
                  : HomePictureWidget(
                      topPadding: 120,
                      heigtContainer: MediaQuery.of(context).size.height * 0.15,
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
                        key:
                            // expansionTileKey,
                            Key(colapsedIndex.toString()),
                        maintainState: true,
                        childrenPadding: const EdgeInsets.all(10),
                        tilePadding: const EdgeInsets.all(5),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        iconColor: Colors.grey,
                        textColor: Colors.black,
                        trailing: const SizedBox(),
                        leading: colapsedIndex != index
                            ? const Icon(Icons.add)
                            : const Icon(Icons.remove),
                        title: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('${cat.name}'),
                            ],
                          )
                        ]),
                        initiallyExpanded: index == colapsedIndex,
                        onExpansionChanged: (value) {
                          selectedValue = isColapsed = !isColapsed;
                          onListExpansionChanged;

                          value
                              ? setState(() {
                                  // colapsedIndex = index;
                                  selectedValue = true;
                                })
                              : setState(() {
                                  // colapsedIndex = -1;
                                  selectedValue = false;
                                });
                        },
                        children: [
                          SizedBox(
                            height: 80 * prodByCat.length.toDouble(),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: prodByCat.length,
                              itemBuilder: (context, index) {
                                return ProductCardWidget(
                                  product: prodByCat[index],
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 80,
              )
              // const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
// const MyNavigationBar(),
