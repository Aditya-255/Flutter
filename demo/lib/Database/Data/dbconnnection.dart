import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBConnection {
  DBConnection._();
  static DBConnection getInstance() {
    return DBConnection._();
  }

  // ignore: dead_code, non_constant_identifier_names
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";

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
          "create table $TABLE_NOTE ($COLUMN_NOTE_SNO integer primary key autoincrement,$COLUMN_NOTE_TITLE text,$COLUMN_NOTE_DESC text)",
        );
      },
      version: 1,
    );
  }

  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDB();
    int rowsEffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE: mTitle,
      COLUMN_NOTE_DESC: mDesc,
    });
    return rowsEffected > 0;
  }

  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();
    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE);
    return mData;
  }
}
