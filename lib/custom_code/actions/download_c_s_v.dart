// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCSV(List<UsersRecord>? userDoc) async {
  // Add your function code here!
  userDoc = userDoc ?? [];

  String fileContent = "Name;Email;created_time";

  userDoc.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.name.toString() +
      ";" +
      record.email.toString() +
      ";" +
      record.email.toString());

  final fileName = "file_name" + DateTime.now().toString() + ".csv";
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
