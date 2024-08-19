// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attachments_model/set_attachments_model.dart';

import '../../../../attributes/domain/models/set_attributes_model/set_attribute_model.dart';

part 'input_create_customer_model.freezed.dart';
part 'input_create_customer_model.g.dart';

@freezed
abstract class InputCreateCustomerModel with _$InputCreateCustomerModel {
  factory InputCreateCustomerModel({
    int? customerId,
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
    @Default(false) bool hasError,
    @Default(false) bool hasSuccess,
    @Default(false) bool hasSuccessSetAttributes,
    @Default(false) bool hasErrorSetAttributes,
    @Default(false) bool hasSuccessSetAddress,
    @Default(false) bool hasErrorSetAddress,
    // @Default(true) @JsonKey(name: "is_resident") bool isResident,
    @Default([]) List<AttributeModel> attributes,
    @Default("") @JsonKey(name: "nationality") String nationality,
    @Default(SetAddressModel()) SetAddressModel address,
    @Default([]) List<SetAttachmentModel> attachments,

    // @Default(0) @JsonKey(name: "national_ID") int nationalId,
  }) = _InputCreateCustomerModel;
  factory InputCreateCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$InputCreateCustomerModelFromJson(json);
}

@freezed
abstract class InputModel with _$InputModel {
  const factory InputModel({
    @Default("") String ar,
    @Default("") String en,
  }) = _InputModel;
  factory InputModel.fromJson(Map<String, dynamic> json) =>
      _$InputModelFromJson(json);
}
