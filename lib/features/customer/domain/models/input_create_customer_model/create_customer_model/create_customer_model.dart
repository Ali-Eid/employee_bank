// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../input_create_customer_model.dart';

part 'create_customer_model.freezed.dart';
part 'create_customer_model.g.dart';

@freezed
abstract class CreateCustomerModel with _$CreateCustomerModel {
  factory CreateCustomerModel({
    @Default("") String title,
    @Default("") String gender,
    @Default(InputModel()) @JsonKey(name: "first_name") InputModel firstName,
    @Default(InputModel()) @JsonKey(name: "last_name") InputModel lastName,
    @Default(InputModel()) @JsonKey(name: "father_name") InputModel fatherName,
    @Default(InputModel())
    @JsonKey(name: "mother_full_name")
    InputModel motherName,
    @Default("") @JsonKey(name: "date_of_birth") String dateOfBirth,
    @Default("") @JsonKey(name: "place_of_birth") String placeOfBirth,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @Default("") @JsonKey(name: "mobile_number") String mobileNumber,
    @JsonKey(name: "email") String? email,
    @Default(true) @JsonKey(name: "status") bool status,
    @Default(0) @JsonKey(name: "template_id") int templateId,
    @Default("") @JsonKey(name: "app_created_at") String createdAt,
    @Default("") @JsonKey(name: "nationality") String nationality,
  }) = _CreateCustomerModel;
  factory CreateCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerModelFromJson(json);
}
