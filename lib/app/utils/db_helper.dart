import 'dart:io';

import 'package:fluttercalculator/app/data/history_data.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Database? _database;
  String historyTable = "HistoryData";

  Future<Database> get database async {
    Directory _directory = await getApplicationDocumentsDirectory();
    String path = join(_directory.path, 'calc_database.db');

    _database = await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('''CREATE TABLE $historyTable (
        
        id INTEGER PRIMARY KEY,
        time TEXT,
        calData TEXT,
        result TEXT
        )''');
    });

    return _database!;
  }

  Future<int> insertData(HistoryData data) async {
    Database _db = await database;
    return await _db.insert(
      historyTable,
      data.toMap(),
    );
  }

  Future<List<HistoryData>> readData() async {
    Database _db = await database;

    List myNotes = await _db.query(historyTable);

    return myNotes.map((map) => HistoryData.fromMap(map)).toList();
  }

  Future<int> updateData(HistoryData data) async {
    Database _db = await database;

    return await _db.update(historyTable, data.toMap(),
        whereArgs: [data.id], where: 'id = ?');
  }

  Future<int> deleteData(int id) async {
    Database _db = await database;

    return await _db.delete(historyTable, where: 'id = ?', whereArgs: [id]);
  }
}
