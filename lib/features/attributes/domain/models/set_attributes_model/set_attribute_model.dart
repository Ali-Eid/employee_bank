// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_attribute_model.freezed.dart';
part 'set_attribute_model.g.dart';

@freezed
abstract class SetAttributeModel with _$SetAttributeModel {
  factory SetAttributeModel({
    @Default(0) @JsonKey(name: "customer_id") int customerId,
    @Default([]) @JsonKey(name: "attrs") List<AttributeModel> attributes,
  }) = _SetAttributeModel;
  factory SetAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$SetAttributeModelFromJson(json);
}

@freezed
abstract class AttributeModel with _$AttributeModel {
  const factory AttributeModel({
    @Default(0) @JsonKey(name: "attribute_id") int attributeId,
    @Default("") @JsonKey(name: "value") String value,
  }) = _AttributeModel;
  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);
}
