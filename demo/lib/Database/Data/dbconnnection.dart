import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBConnection {
  DBConnection._();
  static DBConnection getInstance() {
    return DBConnection._();
  }

  // ignore: dead_code
  final String TABLE_NOTE = "note";
  final String COLUMN_NOTE_SNO = "s_no";
  final String COLUMN_NITE_TITLE = "title";
  final String COLUMN_NOTE_DESC = "desc";

  // ignore: dead_code
  Database? myDB;
  Future<Database> getDB() async {
    myDB = myDB ?? await openDB();
    return myDB!;
    //   if (myDB != null) {
    //     return myDB!;
    //   } else {
    //     myDB = await openDB();
    //     return myDB!;
    //   }
  }

  Future<Database> openDB() async {
    Directory appdir = await getApplicationDocumentsDirectory();
    String dbPath = join(appdir.path, "note.db");
    return await openDatabase(
      dbPath,
      onCreate: (db, version) {
        db.execute(
          "create table $TABLE_NOTE ($COLUMN_NOTE_SNO integer primary key autoincrement,$COLUMN_NITE_TITLE text,$COLUMN_NOTE_DESC text)",
        );
      },
      version: 1,
    );
  }
}
