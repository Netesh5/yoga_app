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
        await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute('''
      CREATE TABLE ${yogaModel.yogaTableName1}(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
''');
      await db.execute('''
      CREATE TABLE ${yogaModel.yogaTableName2}(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
''');
      await db.execute('''
      CREATE TABLE ${yogaModel.yogaTableName3}(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaName} TEXT NOT NULL,
        ${yogaModel.second} BOOLEAN NOT NULL,
        ${yogaModel.imageName} TEXT NOT NULL
      ),
''');
      await db.execute('''
      CREATE TABLE ${yogaModel.yogaTableName4}(
        ${yogaModel.yogaId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${yogaModel.yogaWorkOutName} TEXT NOT NULL,
        ${yogaModel.backImg} TEXT NOT NULL,
        ${yogaModel.timeTaken} TEXT NOT NULL,
        ${yogaModel.totalNofWork} TEXT NOT NULL
      ),
''');
    });
  }

  Future<yoga?> insert(yoga yoga) async {
    final db = await this.database;
    final result = await db?.insert(yogaModel.yogaTableName1, yoga.tojson());
    return yoga.copy(id: result); // not essential
  }

  //read_all_yoga_method
  Future<List<yoga>> readallYoga() async {
    final db = await this.database;
    final orderBy = '${yogaModel.yogaId}ASC';
    final result = await db!.query(yogaModel.yogaTableName1);
    return result.map((json) => yoga.fromjson(json)).toList();
  }
}
