// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_attachments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAttachmentModelImpl _$$SetAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAttachmentModelImpl(
      file: json['file'] as String? ?? "",
      attributeId: (json['attribute_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      isUploaded: json['isUploaded'] as bool? ?? false,
      hasError: json['hasError'] as bool? ?? false,
    );

Map<String, dynamic> _$$SetAttachmentModelImplToJson(
        _$SetAttachmentModelImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'attribute_id': instance.attributeId,
      'name': instance.name,
      'isUploaded': instance.isUploaded,
      'hasError': instance.hasError,
    };
