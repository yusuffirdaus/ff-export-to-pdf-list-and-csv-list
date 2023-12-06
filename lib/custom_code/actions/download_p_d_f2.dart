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

Future downloadPDF2(List<UsersRecord>? userDoc) async {
  // download pdf file base on users documents
// Check if userDoc is not null and has at least one record
  if (userDoc != null && userDoc.isNotEmpty) {
    // Create a PDF document
    final pdf = pw.Document();

    // Add user records to the PDF document

    pdf.addPage(pw.Page(
        build: (pw.Context context) => pw.Column(
              children: [
                pw.Row(children: [
                  pw.Text('Name'),
                  pw.Text('Address'),
                ]),
              ],
              //pw.Text('test2'),
            )));

    // Print the PDF document
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());

    // Return success message
    return 'PDF downloaded successfully';
  } else {
    // Return error message
    return 'No user documents found';
  }
}
