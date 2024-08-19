// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
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
      phoneNumber: json['phone_number'] as String? ?? "",
      mobileNumber: json['mobile_number'] as String? ?? "",
      email: json['email'] as String? ?? "",
      status: json['status'] as bool? ?? false,
      createdAt: json['app_created_at'] as String,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'app_created_at': instance.createdAt,
    };
