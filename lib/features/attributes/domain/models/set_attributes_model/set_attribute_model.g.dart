// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_attribute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAttributeModelImpl _$$SetAttributeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAttributeModelImpl(
      customerId: (json['customer_id'] as num?)?.toInt() ?? 0,
      attributes: (json['attrs'] as List<dynamic>?)
              ?.map((e) => AttributeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SetAttributeModelImplToJson(
        _$SetAttributeModelImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'attrs': instance.attributes,
    };

_$AttributeModelImpl _$$AttributeModelImplFromJson(Map<String, dynamic> json) =>
    _$AttributeModelImpl(
      attributeId: (json['attribute_id'] as num?)?.toInt() ?? 0,
      value: json['value'] as String? ?? "",
    );

Map<String, dynamic> _$$AttributeModelImplToJson(
        _$AttributeModelImpl instance) =>
    <String, dynamic>{
      'attribute_id': instance.attributeId,
      'value': instance.value,
    };
