import 'dart:io';

import 'package:sqflite/sqlite_api.dart';

class yogaModel {
  static String yogaTableName1 = "BeginnerYoga";
  static String yogaTableName2 = "IntermediateYoga";
  static String yogaTableName3 = "AdvanceYoga";
  static String yogaTableName4 = "YogaSummary";
  static String yogaId = 'ID';
  static String yogaName = 'YOGANAME';
  static String second = 'SECOND';
  static String imageName = 'IMAGENAME';
}

class yoga {
  Database? database;
  int? id;
  String yogaTitle;
  String imageUrl;
  bool second;
  yoga({
    this.id,
    required this.yogaTitle,
    required this.imageUrl,
    required this.second,
  });
  yoga copy({
    int? id,
    String? yogaTitle,
    String? imageUrl,
    bool? second,
  }) {
    return yoga(
        id: id ?? this.id,
        yogaTitle: yogaTitle ?? this.yogaTitle,
        imageUrl: imageUrl ?? this.imageUrl,
        second: second ?? this.second);
  }

  factory yoga.fromjson(Map<String, Object?> json) {
    return yoga(
        id: json[yogaModel.yogaId] as int?,
        yogaTitle: json[yogaModel.yogaName] as String,
        imageUrl: json[yogaModel.imageName] as String,
        second: json[yogaModel.second] == 1);
  }
  Map<String, Object?> tojson() {
    return {
      yogaModel.yogaId: id,
      yogaModel.yogaName: yogaTitle,
      yogaModel.imageName: imageUrl,
      yogaModel.second: second ? 1 : 0,
    };
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
