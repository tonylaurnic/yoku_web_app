import 'package:get/get.dart';
import 'package:yoku_web_app/models/category_model.dart';
import 'package:yoku_web_app/models/products_models.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();

  RxList<Product> products = Product.products.obs;

  void addProduct() {
    update();
  }

  List<Product> categoryProducts(Category? category) =>
      products.where((product) => product.category == category!.name).toList();

  void reorderProduct(
    oldIndex,
    newIndex,
  ) {
    if (newIndex > oldIndex) {
      newIndex--;
    }
    final items = products.removeAt(oldIndex);
    products.insert(newIndex, items);
  }
}
