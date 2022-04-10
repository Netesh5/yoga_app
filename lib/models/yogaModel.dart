// class yogaModel {
//   static String yogaId = 'ID';
//   static String yogaName = 'YOGANAME';
//   static String second = 'SECOND';
//   static String imageName = 'IMAGENAME';
// }

// class yoga {
//   int? id;
//   String yogaTitle;
//   String imageUrl;
//   bool second;
//   yoga({
//     this.id,
//     required this.yogaTitle,
//     required this.imageUrl,
//     required this.second,
//   });
//   yoga copy({
//     int? id,
//     String? yogaTitle,
//     String? imageUrl,
//     bool? second,
//   }) {
//     return yoga(
//         id: id ?? this.id,
//         yogaTitle: yogaTitle ?? this.yogaTitle,
//         imageUrl: imageUrl ?? this.imageUrl,
//         second: second ?? this.second);
//   }

//   factory yoga.fromjson(Map<String, Object?> json) {
//     return yoga(
//         id: json[yogaModel.yogaId] as int?,
//         yogaTitle: json[yogaModel.yogaName] as String,
//         imageUrl: json[yogaModel.imageName] as String,
//         second: json[yogaModel.second] == 1);
//   }
//   Map<String, Object?> tojson() {
//     return {
//       yogaModel.yogaId: id,
//       yogaModel.yogaName: yogaTitle,
//       yogaModel.imageName: imageUrl,
//       yogaModel.second: second ? 1 : 0,
//     };
//   }
// }
