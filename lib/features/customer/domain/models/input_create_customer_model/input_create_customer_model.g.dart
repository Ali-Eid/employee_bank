// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputCreateCustomerModelImpl _$$InputCreateCustomerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputCreateCustomerModelImpl(
      customerId: (json['customerId'] as num?)?.toInt(),
      title: json['title'] as String? ?? "",
      gender: json['gender'] as String? ?? "",
      firstName: json['first_name'] == null
          ? const InputModel()
          : InputModel.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? const InputModel()
          : InputModel.fromJson(json['last_name'] as Map<String, dynamic>),
      fatherName: json['father_name'] == null
          ? const InputModel()
          : InputModel.fromJson(json['father_name'] as Map<String, dynamic>),
      motherName: json['mother_full_name'] == null
          ? const InputModel()
          : InputModel.fromJson(
              json['mother_full_name'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] as String? ?? "",
      placeOfBirth: json['place_of_birth'] as String? ?? "",
      phoneNumber: json['phone_number'] as String?,
      mobileNumber: json['mobile_number'] as String? ?? "",
      email: json['email'] as String?,
      status: json['status'] as bool? ?? true,
      templateId: (json['template_id'] as num?)?.toInt() ?? 0,
      createdAt: json['app_created_at'] as String? ?? "",
      hasError: json['hasError'] as bool? ?? false,
      hasSuccess: json['hasSuccess'] as bool? ?? false,
      hasSuccessSetAttributes:
          json['hasSuccessSetAttributes'] as bool? ?? false,
      hasErrorSetAttributes: json['hasErrorSetAttributes'] as bool? ?? false,
      hasSuccessSetAddress: json['hasSuccessSetAddress'] as bool? ?? false,
      hasErrorSetAddress: json['hasErrorSetAddress'] as bool? ?? false,
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => AttributeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nationality: json['nationality'] as String? ?? "",
      address: json['address'] == null
          ? const SetAddressModel()
          : SetAddressModel.fromJson(json['address'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map(
                  (e) => SetAttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InputCreateCustomerModelImplToJson(
        _$InputCreateCustomerModelImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'title': instance.title,
      'gender': instance.gender,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'father_name': instance.fatherName,
      'mother_full_name': instance.motherName,
      'date_of_birth': instance.dateOfBirth,
      'place_of_birth': instance.placeOfBirth,
      'phone_number': instance.phoneNumber,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'status': instance.status,
      'template_id': instance.templateId,
      'app_created_at': instance.createdAt,
      'hasError': instance.hasError,
      'hasSuccess': instance.hasSuccess,
      'hasSuccessSetAttributes': instance.hasSuccessSetAttributes,
      'hasErrorSetAttributes': instance.hasErrorSetAttributes,
      'hasSuccessSetAddress': instance.hasSuccessSetAddress,
      'hasErrorSetAddress': instance.hasErrorSetAddress,
      'attributes': instance.attributes,
      'nationality': instance.nationality,
      'address': instance.address,
      'attachments': instance.attachments,
    };

_$InputModelImpl _$$InputModelImplFromJson(Map<String, dynamic> json) =>
    _$InputModelImpl(
      ar: json['ar'] as String? ?? "",
      en: json['en'] as String? ?? "",
    );

Map<String, dynamic> _$$InputModelImplToJson(_$InputModelImpl instance) =>
    <String, dynamic>{
      'ar': instance.ar,
      'en': instance.en,
    };
