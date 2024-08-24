import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fs_bank/core/bases/enums/gender_type.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/utils/extensions.dart';
import 'package:fs_bank/features/address/domain/models/address_model/address_model.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import '../../../../attributes/domain/models/set_attachments_model/set_attachments_model.dart';
import '../../../../attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import '../../../domain/models/input_create_customer_model/input_create_customer_model.dart';

class InputCustomerCubit extends Cubit<int> {
  InputCustomerCubit(super.initialState);

  TitleType? title;
  String? gender;
  void setTitle(String? title) {
    switch (title) {
      case 'Mr':
        this.title = TitleType.Mr;
        break;
      case 'Ms':
        this.title = TitleType.Ms;
        break;
      default:
        this.title = TitleType.Mr;
        break;
    }
    if (title == TitleType.Mr.name) {
      gender = GenderType.male.name;
    } else {
      gender = GenderType.female.name;
    }
    emit(Random().nextInt(100));
  }

//--------------------------------
  TextEditingController firstNameAr = TextEditingController();
  TextEditingController firstNameEn = TextEditingController();
  InputModel? firstName;
  void setFirstName(String ar, String en) {
    firstName = InputModel(ar: ar, en: en);
    emit(Random().nextInt(100));
  }

  //-----------------------
  TextEditingController lastNameAr = TextEditingController();
  TextEditingController lastNameEn = TextEditingController();
  InputModel? lastName;
  void setLastName(String ar, String en) {
    lastName = InputModel(ar: ar, en: en);
    emit(Random().nextInt(100));
  }

  //-----------------------
  TextEditingController fatherNameAr = TextEditingController();
  TextEditingController fatherNameEn = TextEditingController();
  InputModel? fatherName;
  void setFatherName(String ar, String en) {
    fatherName = InputModel(ar: ar, en: en);
    emit(Random().nextInt(100));
  }

  //-----------------------
  TextEditingController motherNameAr = TextEditingController();
  TextEditingController motherNameEn = TextEditingController();
  InputModel? motherName;
  void setMotherName(String ar, String en) {
    motherName = InputModel(ar: ar, en: en);
    emit(Random().nextInt(100));
  }

  //-----------------------
  TextEditingController dateOfBirthController = TextEditingController();
  // String? dateOfBirth;
  void setDob(DateTime? dateTime) {
    if (dateTime != null) {
      dateOfBirthController.text = dateTime.toFormattedString();
    }
    emit(Random().nextInt(100));
  }

  //-----------------------
  TextEditingController placeOfBirthController = TextEditingController();
  // String? placeOfBirth;
  //-----------------------
  TextEditingController phoneNumberController = TextEditingController();
  // String? phoneNumber;
  //-----------------------
  TextEditingController mobileNumberController = TextEditingController();
  // String? mobileNumber;
  //-----------------------
  TextEditingController emailController = TextEditingController();
  // String? email;
  //-----------------------
  bool? status;
  void setStatus(bool status) {
    this.status = status;
    emit(Random().nextInt(100));
  }

  //-------------
  StaticModel? template;
  void setTemplate(StaticModel? template) {
    this.template = template;
    emit(Random().nextInt(100));
  }

  //-------------
  //------------------------------------------Attributes----------------------------------------------------------
  List<AttributeModel> attributes = [];

  bool getCheckBoxValue(int id, String value) {
    if (attributes.any((element) => element.attributeId == id)) {
      var attribute =
          attributes.firstWhere((element) => element.attributeId == id);
      return attribute.value.split(",").any((element) => element == value);
    } else {
      return false;
    }
  }

  bool checkValue(int id) {
    return attributes.any((element) => element.attributeId == id);
  }

  String getRadioValue(int id) {
    var attribute = attributes.firstWhere(
      (element) => element.attributeId == id,
      orElse: () => const AttributeModel(),
    );
    if (attribute != const AttributeModel()) {
      return attribute.value;
    } else {
      return "";
    }
  }

  void AddAttributeCheckBox(int id, String value) {
    var attribute = attributes.firstWhere(
      (element) => element.attributeId == id,
      orElse: () => const AttributeModel(),
    );
    if (attribute != const AttributeModel()) {
      if (attribute.value.split(',').any((element) => element == value)) {
        attributes.removeWhere(
          (element) => element.attributeId == id,
        );
        emit(Random().nextInt(100));
      } else {
        attribute = attribute.copyWith(
            attributeId: id, value: "${attribute.value},$value");
        attributes.removeWhere(
          (element) => element.attributeId == id,
        );
        attributes.add(attribute);
        emit(Random().nextInt(100));
      }
    } else {
      attributes.add(AttributeModel(attributeId: id, value: value));
      emit(Random().nextInt(100));
    }
  }

  void AddAttributeSelectRadio(int id, String value) {
    var attribute = attributes.firstWhere(
      (element) => element.attributeId == id,
      orElse: () => const AttributeModel(),
    );
    if (attribute != const AttributeModel()) {
      attributes.removeWhere(
        (element) => element.attributeId == id,
      );
      attributes.add(AttributeModel(attributeId: id, value: value));
      emit(Random().nextInt(100));
    } else {
      attributes.add(AttributeModel(attributeId: id, value: value));
      emit(Random().nextInt(100));
    }
  }

  void setTextAttribute({
    required int id,
    String? value,
  }) {
    var attribute = attributes.firstWhere(
      (element) => element.attributeId == id,
      orElse: () => const AttributeModel(),
    );
    if (attribute != const AttributeModel()) {
      if (attribute.value.isEmpty) {
        attributes.removeWhere(
          (element) => element.attributeId == id,
        );
      } else {
        attribute = attribute.copyWith(attributeId: id, value: value ?? "");
        attributes.removeWhere(
          (element) => element.attributeId == id,
        );
        attributes.add(attribute);
        emit(Random().nextInt(100));
      }
    } else {
      if (value?.isEmpty ?? false) {
      } else {
        attributes.add(AttributeModel(attributeId: id, value: value ?? ""));
        emit(Random().nextInt(100));
      }
    }
  }

  void setDobAttributes(int id, String? dateTime) {
    var attribute = attributes.firstWhere(
      (element) => element.attributeId == id,
      orElse: () => const AttributeModel(),
    );
    if (attribute != const AttributeModel() && dateTime != null) {
      attribute = attribute.copyWith(attributeId: id, value: dateTime);
      attributes.removeWhere(
        (element) => element.attributeId == id,
      );
      attributes.add(attribute);
      emit(Random().nextInt(100));
    } else {
      if (dateTime != null) {
        attributes.add(AttributeModel(attributeId: id, value: dateTime));
      }
      emit(Random().nextInt(100));
    }
  }

  List<AttributeModel> filtersAttributes() {
    attributes.removeWhere((element) => element.value.isEmpty);
    return attributes;
  }
  //--------------------------------------------------------------------------------------------------------------

  //------------------------------------------Address----------------------------------------------------------
  TextEditingController areaController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  TextEditingController phoneNumberAddressController = TextEditingController();
  TextEditingController addressTypeController = TextEditingController();
  bool isDefault = false;
  CountryModel? countrySelected;
  CountryModel? stateSelected;

  void setIsDefault(bool isDefault) {
    this.isDefault = isDefault;
    emit(Random().nextInt(100));
  }

  void setCountry(CountryModel? countrySelected) {
    this.countrySelected = countrySelected;
    emit(Random().nextInt(100));
  }

  void setState(CountryModel? stateSelected) {
    this.stateSelected = stateSelected;
    emit(Random().nextInt(100));
  }

  SetAddressModel? addressModel;
  void setAddressModel() {
    addressModel = SetAddressModel(
        countryId: countrySelected?.id ?? 0,
        stateId:
            stateSelected?.id == countrySelected?.id ? null : stateSelected?.id,
        addressType: addressTypeController.text,
        area: areaController.text,
        details: detailsController.text,
        isDefault: isDefault,
        phoneNumber: phoneNumberAddressController.text,
        street: streetController.text);
    emit(Random().nextInt(100));
  }

  //--------------------------------------------------------------------------------------------------------------

  //------------------------------------------Attachments----------------------------------------------------------
  List<SetAttachmentModel> attachments = [];

  void setAttachments(SetAttachmentModel model) {
    int index = attachments
        .indexWhere((element) => element.attributeId == model.attributeId);
    if (index == -1) {
      attachments.add(model);
    } else {
      attachments[index] = model;
    }
    emit(Random().nextInt(100));
  }

  void removeAttachment(int id) {
    attachments.removeWhere((element) => element.attributeId == id);
    emit(Random().nextInt(100));
  }

  bool checkAttachment(int id) {
    return attachments.any((element) => element.attributeId == id);
  }
  //--------------------------------------------------------------------------------------------------------------
}
