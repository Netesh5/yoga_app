import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yogaapp/models/yogaModel.dart';

class yogaDatabase {
  Database? _database;
  Future<Database?> get database async {
    if (_database == null) {
      _database = await initalizedatabase();
    }
    return _database;
  }

  Future<Database?> initalizedatabase() async {
    var dir = await getDatabasesPath();
    var path = dir + 'yoga.db';
    var database =
        await openDatabase(path, version: 1, onCreate: (db, version) {
      return db.execute('''
      CREATE TABLE BegineerYoga(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
      CREATE TABLE IntermediateYoga(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
      CREATE TABLE AdvanceYoga(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
      CREATE TABLE YogaSummary(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
''');
    });
  }
}
