import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';
import 'package:universal_html/html.dart' show AnchorElement;
import 'package:uzman/controller.dart';

class Excel extends StatelessWidget {
  final controller = Get.put(Controller());

  Future<void> createPdf(List<int> bytes) async {
    print("PDF e geldi.");
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    page.graphics.drawString(
        "Welcome To PDF", PdfStandardFont(PdfFontFamily.courier, 30));
    List<int> bytes = await document.save();
    document.dispose();
    AnchorElement(
        href:
            "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
      ..setAttribute("download", "Output.pdf")
      ..click();
  }

  Future<void> createExcel() async {
    print("geldi");
    final workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];

    // Enable calculation for worksheet.
    sheet.enableSheetCalculations();

    //Set data in the worksheet.
    sheet.getRangeByName('A1:D1').columnWidth = 13.82;
    sheet.getRangeByName('E1').columnWidth = 5;
    sheet.getRangeByName('F1').columnWidth = 16;

    sheet.getRangeByName('A1:F1').cellStyle.bold = true;
    final Range range9 = sheet.getRangeByName('A1:F1');
    range9.cellStyle.backColor = '#ACB9CA';
    for (int j = 0; j < controller.detailHintText.length; j++) {
      sheet
          .getRangeByIndex(1, j + 1)
          .setText("${controller.detailHintText[j]}");
    }
    for (int i = 1; i < controller.employeesInformation.length + 1; i++) {
      sheet
          .getRangeByIndex(i + 1, 1)
          .setText("${controller.employeesInformation[i - 1].name}");
      sheet
          .getRangeByIndex(i + 1, 2)
          .setText("${controller.employeesInformation[i - 1].surName}");
      sheet
          .getRangeByIndex(i + 1, 3)
          .setText("${controller.employeesInformation[i - 1].phone_number}");
      sheet
          .getRangeByIndex(i + 1, 4)
          .setText("${controller.employeesInformation[i - 1].servis_noktasi}");
      sheet
          .getRangeByIndex(i + 1, 5)
          .setText("${controller.employeesInformation[i - 1].yas}");
      sheet.getRangeByIndex(i + 1, 6).setText(
          "${controller.employeesInformation[i - 1].gunluk_firma_ismi}");
    }

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    if (kIsWeb) {
      AnchorElement(
          href:
              "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
        ..setAttribute("download", "Output.xlsx")
        ..click();
    } else {
      final path = (await getApplicationSupportDirectory()).path;
      final String fileName =
          io.Platform.isWindows ? "$path\\Output.xlsx" : "$path/Output.xlsx";
      print("path :$path fileName :$fileName");
      final io.File file = io.File(fileName);
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: Text("Hi")),
    );
  }
}
