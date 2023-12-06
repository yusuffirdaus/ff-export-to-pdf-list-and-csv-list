// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future downloadPDF(
  String name,
  String amount,
) async {
  // Add your function code here!
  final pdf = pw.Document();

  //Title of the page
  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          pw.Text("Producto",
              style: const pw.TextStyle(
                fontSize: 40,
              )),

          //divider
          pw.Divider(thickness: 2),

          //product
          pw.Container(
            decoration: pw.BoxDecoration(
              borderRadius: const pw.BorderRadius.all(pw.Radius.circular(2)),
            ),
            padding: const pw.EdgeInsets.only(
                left: 40, top: 10, bottom: 10, right: 20),
            alignment: pw.Alignment.centerLeft,
            height: 50,
            child: pw.DefaultTextStyle(
              style: pw.TextStyle(
                fontSize: 12,
              ),
              child: pw.GridView(
                crossAxisCount: 2,
                children: [
                  pw.Text('producto'),
                  pw.Text(name),
                  pw.Text('cantidad'),
                  pw.Text(amount),
                ],
              ),
            ),
          ),
          pw.Divider(thickness: 2),
        ]);
      }));

  // End of Page

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
