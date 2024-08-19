// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
      stateId: (json['state_id'] as num?)?.toInt() ?? 0,
      area: json['area'] as String? ?? "",
      street: json['street'] as String? ?? "",
      details: json['details'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      addressType: json['address_type'] as String? ?? "",
      isDefault: json['is_default'] as bool? ?? false,
      customerId: (json['customer_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'state_id': instance.stateId,
      'area': instance.area,
      'street': instance.street,
      'details': instance.details,
      'phone_number': instance.phoneNumber,
      'address_type': instance.addressType,
      'is_default': instance.isDefault,
      'customer_id': instance.customerId,
    };
