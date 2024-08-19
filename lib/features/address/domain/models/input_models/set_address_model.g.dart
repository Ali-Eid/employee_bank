// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAddressModelImpl _$$SetAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAddressModelImpl(
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
      stateId: (json['state_id'] as num?)?.toInt() ?? 0,
      area: json['area'] as String? ?? "",
      street: json['street'] as String? ?? "",
      details: json['details'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      addressType: json['address_type'] as String? ?? "",
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$SetAddressModelImplToJson(
        _$SetAddressModelImpl instance) =>
    <String, dynamic>{
      'country_id': instance.countryId,
      'state_id': instance.stateId,
      'area': instance.area,
      'street': instance.street,
      'details': instance.details,
      'phone_number': instance.phoneNumber,
      'address_type': instance.addressType,
      'is_default': instance.isDefault,
    };
