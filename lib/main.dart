import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:pdfdownload/controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PdfView(),
    );
  }
}

class PdfView extends StatelessWidget {
  PdfView({super.key});

  final pdfCtr = Get.put(DeliveryPrintController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              pdfCtr.generateInvoice(context: context);
            },
            child: Text('Download')),
      ),
    );
  }
}
