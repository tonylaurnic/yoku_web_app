import 'package:get/get.dart';
import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/models/category_model.dart';

import 'package:yoku_web_app/models/products_models.dart';

class CategoryController extends GetxController {
  static CategoryController instance = Get.find();

  List<Category> category = Category.categories.obs;
  // var category = <Category>[].obs;

  List<Product> categoryProducts(Category category) =>
      productController.products
          .where((product) => product.category == category.name)
          .toList();
}
