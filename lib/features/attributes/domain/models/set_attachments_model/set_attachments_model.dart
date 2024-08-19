// import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_attachments_model.freezed.dart';
part 'set_attachments_model.g.dart';

@freezed
abstract class SetAttachmentModel with _$SetAttachmentModel {
  factory SetAttachmentModel({
    @Default("") String file,
    @Default(0) @JsonKey(name: "attribute_id") int attributeId,
    @Default("") String name,
    @Default(false) bool isUploaded,
    @Default(false) bool hasError,
  }) = _SetAttachmentModel;
  factory SetAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$SetAttachmentModelFromJson(json);
}






// class SetAttachmentModel {
//   final File file;
//   final int attributeId;
//   final String name;
//   final bool isUploaded;

//   SetAttachmentModel({
//     required this.file,
//     required this.attributeId,
//     required this.name,
//     required this.isUploaded,
//   });

//   // Method to convert a JSON map to an instance of SetAttachmentModel
//   factory SetAttachmentModel.fromJson(Map<String, dynamic> json) {
//     return SetAttachmentModel(
//       file: File(json['file']), // Assuming the file path is stored as a string
//       attributeId: json['attribute_id'],
//       name: json['name'],
//       isUploaded: json['is_uploaded'],
//     );
//   }

//   // Method to convert an instance of SetAttachmentModel to a JSON map
//   Map<String, dynamic> toJson() {
//     return {
//       "file": file.path, // Convert File object to its path string
//       "attribute_id": attributeId,
//       "name": name,
//       "is_uploaded": isUploaded,
//     };
//   }

//   // Method to copy the current instance with optional new values
//   SetAttachmentModel copyWith({
//     File? file,
//     int? attributeId,
//     String? name,
//     bool? isUploaded,
//   }) {
//     return SetAttachmentModel(
//       file: file ?? this.file,
//       attributeId: attributeId ?? this.attributeId,
//       name: name ?? this.name,
//       isUploaded: isUploaded ?? this.isUploaded,
//     );
//   }
// }
