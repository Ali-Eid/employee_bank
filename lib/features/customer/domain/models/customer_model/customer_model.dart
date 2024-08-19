// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../input_create_customer_model/input_create_customer_model.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
abstract class CustomerModel with _$CustomerModel {
  factory CustomerModel({
    @Default(0) int id,
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
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default("") @JsonKey(name: "mobile_number") String mobileNumber,
    @Default("") @JsonKey(name: "email") String email,
    @Default(false) @JsonKey(name: "status") bool status,
    @JsonKey(name: "app_created_at") required String createdAt,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
