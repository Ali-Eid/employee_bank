// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/enums/input_type.dart';

import '../../../../../core/bases/models/static_model/static_model.dart';

part 'attributes_model.freezed.dart';
part 'attributes_model.g.dart';

@freezed
abstract class AttributesModel with _$AttributesModel {
  factory AttributesModel(
      {@Default(StaticModel()) StaticModel template,
      @Default([]) List<AttributesDataModel> attributes}) = _AttributesModel;
  factory AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesModelFromJson(json);
}

@freezed
abstract class AttributesDataModel with _$AttributesDataModel {
  factory AttributesDataModel({
    @Default(0) int id,
    @Default("") String label,
    InputType? type,
    @Default({}) Map<String, dynamic> value,
    @Default(0) int attribute_template_id,
    @Default(true) @JsonKey(name: "is_required") bool isRequired,
    @Default(true) @JsonKey(name: "is_active") bool isActive,
  }) = _AttributesDataModel;
  factory AttributesDataModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesDataModelFromJson(json);
}
