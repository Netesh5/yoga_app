import 'package:sqflite/sqlite_api.dart';
import 'package:yogaapp/screens/ready.dart';

class yogaModel {
  static String yogaTableName1 = "BeginnerYoga";
  static String yogaTableName2 = "IntermediateYoga";
  static String yogaTableName3 = "AdvanceYoga";
  static String yogaTableName4 = "YogaSummary";
  static String yogaId = 'ID';
  static String yogaName = 'YOGANAME';
  static String second = 'SECOND';
  static String imageName = 'IMAGENAME';
  static String yogaWorkOutName = 'yogaWorkOutName';
  static String backImg = 'backImg';
  static String timeTaken = 'timeTaken';
  static String totalNofWork = 'totalNofWork';
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
}

class yogaSummary {
  Database? database;
  int? id;
  String yogaWorkOutName;
  String backImg;
  String timeTaken;
  String totalNofWork;
  yogaSummary({
    this.id,
    required this.yogaWorkOutName,
    required this.backImg,
    required this.timeTaken,
    required this.totalNofWork,
  });

  yogaSummary copy({
    int? id,
    String? yogaWorkOutName,
    String? backImg,
    String? timeTaken,
    String? totalNofWork,
  }) {
    return yogaSummary(
      id: id ?? this.id,
      yogaWorkOutName: yogaWorkOutName ?? this.yogaWorkOutName,
      backImg: backImg ?? this.backImg,
      timeTaken: timeTaken ?? this.timeTaken,
      totalNofWork: totalNofWork ?? this.totalNofWork,
    );
  }

  factory yogaSummary.fromjson(Map<String, Object?> json) {
    return yogaSummary(
      id: json[yogaModel.yogaId] as int,
      yogaWorkOutName: json[yogaModel.yogaWorkOutName] as String,
      backImg: json[yogaModel.backImg] as String,
      timeTaken: json[yogaModel.timeTaken] as String,
      totalNofWork: json[yogaModel.totalNofWork] as String,
    );
  }

  Map<String, Object?> tojson() {
    return {
      yogaModel.yogaId: id,
      yogaModel.yogaWorkOutName: yogaWorkOutName,
      yogaModel.backImg: backImg,
      yogaModel.timeTaken: timeTaken,
      yogaModel.totalNofWork: totalNofWork,
    };
  }
}
