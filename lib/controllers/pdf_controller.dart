import 'package:get/get.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:yoku_web_app/models/products_models.dart';
import 'package:universal_html/html.dart' as html;

class PdfController extends GetxController {
  static PdfController instance = Get.find();

  RxString filePath = ''.obs;
  final pdf = pw.Document();

  final List products = Product.products;
  RxString? pdfFilePath = ''.obs;

  Rx<DateTime> get _timestamp => DateTime.now().obs;

  String get timeHumanReadable =>
      '${_timestamp.value.day}/${_timestamp.value.month}/${_timestamp.value.year}';

  Future<void> generatePdfAndDownload() async {
    pdf.addPage(
      pw.MultiPage(build: (context) {
        return [
          pw.Header(
            level: 0,
            child: pw.Text('Menu'),
          ),
          for (var product in products)
            pw.Row(
              children: [
                pw.Text(product.name),
                pw.Spacer(),
                pw.Text(
                  '${product.price.toStringAsFixed(2)}',
                ),
              ],
            )
        ];
      }),
    );

    pdf.save().then((value) {
      final blob = html.Blob([value], 'application/pdf');
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: url)
        ..setAttribute('style', 'display: none;')
        ..setAttribute('download', 'menu$timeHumanReadable.pdf');
      html.document.body!.children.add(anchor);
      anchor.click();
      html.document.body!.children.remove(anchor);
      html.Url.revokeObjectUrl(url);
    });
  }

  @override
  void onInit() {
    generatePdfAndDownload();
    super.onInit();
  }
}
