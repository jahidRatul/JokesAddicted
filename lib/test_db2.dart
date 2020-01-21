import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  // Construct the path to the app's writable database file:
  var dbDir = await getDatabasesPath();
  var dbPath = join(dbDir, "app.db");

// Delete any existing database:
  await deleteDatabase(dbPath);

// Create the writable database file from the bundled demo database file:
  ByteData data = await rootBundle.load("assets/jokeListBD.db");
  List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  await File(dbPath).writeAsBytes(bytes);
  var db = await openDatabase(dbPath);
}
