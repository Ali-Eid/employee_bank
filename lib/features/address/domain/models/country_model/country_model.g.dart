// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      code: json['code'] as String? ?? "",
      name: json['name'] == null
          ? const CountryNameModel()
          : CountryNameModel.fromJson(json['name'] as Map<String, dynamic>),
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'country_id': instance.countryId,
    };

_$CountryNameModelImpl _$$CountryNameModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryNameModelImpl(
      en: json['en'] as String? ?? "",
      ar: json['ar'] as String? ?? "",
    );

Map<String, dynamic> _$$CountryNameModelImplToJson(
        _$CountryNameModelImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };
