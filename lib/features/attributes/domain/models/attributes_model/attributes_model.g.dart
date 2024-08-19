// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributesModelImpl _$$AttributesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttributesModelImpl(
      template: json['template'] == null
          ? const StaticModel()
          : StaticModel.fromJson(json['template'] as Map<String, dynamic>),
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) =>
                  AttributesDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AttributesModelImplToJson(
        _$AttributesModelImpl instance) =>
    <String, dynamic>{
      'template': instance.template,
      'attributes': instance.attributes,
    };

_$AttributesDataModelImpl _$$AttributesDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttributesDataModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      label: json['label'] as String? ?? "",
      type: $enumDecodeNullable(_$InputTypeEnumMap, json['type']),
      value: json['value'] as Map<String, dynamic>? ?? const {},
      attribute_template_id:
          (json['attribute_template_id'] as num?)?.toInt() ?? 0,
      isRequired: json['is_required'] as bool? ?? true,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$$AttributesDataModelImplToJson(
        _$AttributesDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'type': _$InputTypeEnumMap[instance.type],
      'value': instance.value,
      'attribute_template_id': instance.attribute_template_id,
      'is_required': instance.isRequired,
      'is_active': instance.isActive,
    };

const _$InputTypeEnumMap = {
  InputType.text: 'text',
  InputType.number: 'number',
  InputType.date: 'date',
  InputType.checkbox: 'checkbox',
  InputType.radio: 'radio',
  InputType.select: 'select',
  InputType.file: 'file',
};
