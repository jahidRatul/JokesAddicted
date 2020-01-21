import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

void main() async {
  // Construct the path to the app's writable database file:
  var dbDir = await getDatabasesPath();
  var dbPath = join(dbDir, "app.db");

// Delete any existing database:
  await deleteDatabase(dbPath);

// Create the writable database file from the bundled demo database file:
  ByteData data = await rootBundle.load("assets/jokeListDB.db");
  List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  await File(dbPath).writeAsBytes(bytes);

  var db = await openDatabase(dbPath);

  // A method that retrieves all the dogs from the dogs table.
  Future<List<JokesTable>> jokes() async {
    // Get a reference to the database.
    var db = await openDatabase(dbPath);
    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('jokes');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return JokesTable(
        category: maps[i]['category'],
        title: maps[i]['title'],
        story: maps[i]['story'],
      );
    });
  }

// Now, use the method above to retrieve all the dogs.
  print(await jokes()); // Prints a list that include Fido.
}

class JokesTable {
  final String category;
  final String title;
  final String story;

  JokesTable({this.category, this.title, this.story});

  @override
  String toString() {
    return 'jokes{category: $category, title: $title, story: $story}';
  }
}
