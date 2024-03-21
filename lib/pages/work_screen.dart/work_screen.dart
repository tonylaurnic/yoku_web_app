import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pdf = pdfController.pdfFilePath!.value;
    return Scaffold(
      body: Stack(
        children: [
          Expanded(child: PdfView(path: pdfController.pdfFilePath!.value)),
          // CentredView(
          //   child: Column(
          //     children: [
          //       Expanded(child: PdfView(path: pdf)),
          //     ],
          //   ),
          // ),
          const NavigationBarWidget(),
        ],
      ),
    );
  }
}
