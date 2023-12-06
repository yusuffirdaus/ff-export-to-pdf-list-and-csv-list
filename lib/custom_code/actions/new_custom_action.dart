// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future newCustomAction(List<UsersRecord> userDoc) async {
  // download pdf file base on users documents in 1 page
// Define the function to download pdf file

  final pdf = pw.Document();
  // Add a title to the pdf file
  pdf.addPage(pw.MultiPage(
      build: (context) => [
            pw.Header(
                level: 0,
                child: pw.Text('Users Documents',
                    style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
            pw.Table.fromTextArray(context: context, data: <List<String>>[
              <String>['Name', 'Email', 'Phone'],
              ...userDoc.map((user) => [user.name, user.email, user.phone])
            ])
          ]));

  // Print the pdf file
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}
