import 'package:get/get.dart';
import 'package:yoku_web_app/controllers/pdf_controller.dart';

class PdfBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PdfController>(() => PdfController());
  }
}
