// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCustomerModelImpl _$$CreateCustomerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCustomerModelImpl(
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
      nationality: json['nationality'] as String? ?? "",
    );

Map<String, dynamic> _$$CreateCustomerModelImplToJson(
        _$CreateCustomerModelImpl instance) =>
    <String, dynamic>{
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
      'nationality': instance.nationality,
    };
