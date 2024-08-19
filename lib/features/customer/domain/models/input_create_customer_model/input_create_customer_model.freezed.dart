// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_create_customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputCreateCustomerModel _$InputCreateCustomerModelFromJson(
    Map<String, dynamic> json) {
  return _InputCreateCustomerModel.fromJson(json);
}

/// @nodoc
mixin _$InputCreateCustomerModel {
  int? get customerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  InputModel get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  InputModel get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "father_name")
  InputModel get fatherName => throw _privateConstructorUsedError;
  @JsonKey(name: "mother_full_name")
  InputModel get motherName => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  String get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "place_of_birth")
  String get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_number")
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "template_id")
  int get templateId => throw _privateConstructorUsedError;
  @JsonKey(name: "app_created_at")
  String get createdAt => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get hasSuccess => throw _privateConstructorUsedError;
  bool get hasSuccessSetAttributes => throw _privateConstructorUsedError;
  bool get hasErrorSetAttributes => throw _privateConstructorUsedError;
  bool get hasSuccessSetAddress => throw _privateConstructorUsedError;
  bool get hasErrorSetAddress =>
      throw _privateConstructorUsedError; // @Default(true) @JsonKey(name: "is_resident") bool isResident,
  List<AttributeModel> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: "nationality")
  String get nationality => throw _privateConstructorUsedError;
  SetAddressModel get address => throw _privateConstructorUsedError;
  List<SetAttachmentModel> get attachments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCreateCustomerModelCopyWith<InputCreateCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCreateCustomerModelCopyWith<$Res> {
  factory $InputCreateCustomerModelCopyWith(InputCreateCustomerModel value,
          $Res Function(InputCreateCustomerModel) then) =
      _$InputCreateCustomerModelCopyWithImpl<$Res, InputCreateCustomerModel>;
  @useResult
  $Res call(
      {int? customerId,
      String title,
      String gender,
      @JsonKey(name: "first_name") InputModel firstName,
      @JsonKey(name: "last_name") InputModel lastName,
      @JsonKey(name: "father_name") InputModel fatherName,
      @JsonKey(name: "mother_full_name") InputModel motherName,
      @JsonKey(name: "date_of_birth") String dateOfBirth,
      @JsonKey(name: "place_of_birth") String placeOfBirth,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "mobile_number") String mobileNumber,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "template_id") int templateId,
      @JsonKey(name: "app_created_at") String createdAt,
      bool hasError,
      bool hasSuccess,
      bool hasSuccessSetAttributes,
      bool hasErrorSetAttributes,
      bool hasSuccessSetAddress,
      bool hasErrorSetAddress,
      List<AttributeModel> attributes,
      @JsonKey(name: "nationality") String nationality,
      SetAddressModel address,
      List<SetAttachmentModel> attachments});

  $InputModelCopyWith<$Res> get firstName;
  $InputModelCopyWith<$Res> get lastName;
  $InputModelCopyWith<$Res> get fatherName;
  $InputModelCopyWith<$Res> get motherName;
  $SetAddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$InputCreateCustomerModelCopyWithImpl<$Res,
        $Val extends InputCreateCustomerModel>
    implements $InputCreateCustomerModelCopyWith<$Res> {
  _$InputCreateCustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? title = null,
    Object? gender = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? dateOfBirth = null,
    Object? placeOfBirth = null,
    Object? phoneNumber = freezed,
    Object? mobileNumber = null,
    Object? email = freezed,
    Object? status = null,
    Object? templateId = null,
    Object? createdAt = null,
    Object? hasError = null,
    Object? hasSuccess = null,
    Object? hasSuccessSetAttributes = null,
    Object? hasErrorSetAttributes = null,
    Object? hasSuccessSetAddress = null,
    Object? hasErrorSetAddress = null,
    Object? attributes = null,
    Object? nationality = null,
    Object? address = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccess: null == hasSuccess
          ? _value.hasSuccess
          : hasSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccessSetAttributes: null == hasSuccessSetAttributes
          ? _value.hasSuccessSetAttributes
          : hasSuccessSetAttributes // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorSetAttributes: null == hasErrorSetAttributes
          ? _value.hasErrorSetAttributes
          : hasErrorSetAttributes // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccessSetAddress: null == hasSuccessSetAddress
          ? _value.hasSuccessSetAddress
          : hasSuccessSetAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorSetAddress: null == hasErrorSetAddress
          ? _value.hasErrorSetAddress
          : hasErrorSetAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SetAddressModel,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<SetAttachmentModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputModelCopyWith<$Res> get firstName {
    return $InputModelCopyWith<$Res>(_value.firstName, (value) {
      return _then(_value.copyWith(firstName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputModelCopyWith<$Res> get lastName {
    return $InputModelCopyWith<$Res>(_value.lastName, (value) {
      return _then(_value.copyWith(lastName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputModelCopyWith<$Res> get fatherName {
    return $InputModelCopyWith<$Res>(_value.fatherName, (value) {
      return _then(_value.copyWith(fatherName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputModelCopyWith<$Res> get motherName {
    return $InputModelCopyWith<$Res>(_value.motherName, (value) {
      return _then(_value.copyWith(motherName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SetAddressModelCopyWith<$Res> get address {
    return $SetAddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputCreateCustomerModelImplCopyWith<$Res>
    implements $InputCreateCustomerModelCopyWith<$Res> {
  factory _$$InputCreateCustomerModelImplCopyWith(
          _$InputCreateCustomerModelImpl value,
          $Res Function(_$InputCreateCustomerModelImpl) then) =
      __$$InputCreateCustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? customerId,
      String title,
      String gender,
      @JsonKey(name: "first_name") InputModel firstName,
      @JsonKey(name: "last_name") InputModel lastName,
      @JsonKey(name: "father_name") InputModel fatherName,
      @JsonKey(name: "mother_full_name") InputModel motherName,
      @JsonKey(name: "date_of_birth") String dateOfBirth,
      @JsonKey(name: "place_of_birth") String placeOfBirth,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: "mobile_number") String mobileNumber,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "status") bool status,
      @JsonKey(name: "template_id") int templateId,
      @JsonKey(name: "app_created_at") String createdAt,
      bool hasError,
      bool hasSuccess,
      bool hasSuccessSetAttributes,
      bool hasErrorSetAttributes,
      bool hasSuccessSetAddress,
      bool hasErrorSetAddress,
      List<AttributeModel> attributes,
      @JsonKey(name: "nationality") String nationality,
      SetAddressModel address,
      List<SetAttachmentModel> attachments});

  @override
  $InputModelCopyWith<$Res> get firstName;
  @override
  $InputModelCopyWith<$Res> get lastName;
  @override
  $InputModelCopyWith<$Res> get fatherName;
  @override
  $InputModelCopyWith<$Res> get motherName;
  @override
  $SetAddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$InputCreateCustomerModelImplCopyWithImpl<$Res>
    extends _$InputCreateCustomerModelCopyWithImpl<$Res,
        _$InputCreateCustomerModelImpl>
    implements _$$InputCreateCustomerModelImplCopyWith<$Res> {
  __$$InputCreateCustomerModelImplCopyWithImpl(
      _$InputCreateCustomerModelImpl _value,
      $Res Function(_$InputCreateCustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? title = null,
    Object? gender = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fatherName = null,
    Object? motherName = null,
    Object? dateOfBirth = null,
    Object? placeOfBirth = null,
    Object? phoneNumber = freezed,
    Object? mobileNumber = null,
    Object? email = freezed,
    Object? status = null,
    Object? templateId = null,
    Object? createdAt = null,
    Object? hasError = null,
    Object? hasSuccess = null,
    Object? hasSuccessSetAttributes = null,
    Object? hasErrorSetAttributes = null,
    Object? hasSuccessSetAddress = null,
    Object? hasErrorSetAddress = null,
    Object? attributes = null,
    Object? nationality = null,
    Object? address = null,
    Object? attachments = null,
  }) {
    return _then(_$InputCreateCustomerModelImpl(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      motherName: null == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as InputModel,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccess: null == hasSuccess
          ? _value.hasSuccess
          : hasSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccessSetAttributes: null == hasSuccessSetAttributes
          ? _value.hasSuccessSetAttributes
          : hasSuccessSetAttributes // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorSetAttributes: null == hasErrorSetAttributes
          ? _value.hasErrorSetAttributes
          : hasErrorSetAttributes // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSuccessSetAddress: null == hasSuccessSetAddress
          ? _value.hasSuccessSetAddress
          : hasSuccessSetAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrorSetAddress: null == hasErrorSetAddress
          ? _value.hasErrorSetAddress
          : hasErrorSetAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as SetAddressModel,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<SetAttachmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputCreateCustomerModelImpl implements _InputCreateCustomerModel {
  _$InputCreateCustomerModelImpl(
      {this.customerId,
      this.title = "",
      this.gender = "",
      @JsonKey(name: "first_name") this.firstName = const InputModel(),
      @JsonKey(name: "last_name") this.lastName = const InputModel(),
      @JsonKey(name: "father_name") this.fatherName = const InputModel(),
      @JsonKey(name: "mother_full_name") this.motherName = const InputModel(),
      @JsonKey(name: "date_of_birth") this.dateOfBirth = "",
      @JsonKey(name: "place_of_birth") this.placeOfBirth = "",
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "mobile_number") this.mobileNumber = "",
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "status") this.status = true,
      @JsonKey(name: "template_id") this.templateId = 0,
      @JsonKey(name: "app_created_at") this.createdAt = "",
      this.hasError = false,
      this.hasSuccess = false,
      this.hasSuccessSetAttributes = false,
      this.hasErrorSetAttributes = false,
      this.hasSuccessSetAddress = false,
      this.hasErrorSetAddress = false,
      final List<AttributeModel> attributes = const [],
      @JsonKey(name: "nationality") this.nationality = "",
      this.address = const SetAddressModel(),
      final List<SetAttachmentModel> attachments = const []})
      : _attributes = attributes,
        _attachments = attachments;

  factory _$InputCreateCustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputCreateCustomerModelImplFromJson(json);

  @override
  final int? customerId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey(name: "first_name")
  final InputModel firstName;
  @override
  @JsonKey(name: "last_name")
  final InputModel lastName;
  @override
  @JsonKey(name: "father_name")
  final InputModel fatherName;
  @override
  @JsonKey(name: "mother_full_name")
  final InputModel motherName;
  @override
  @JsonKey(name: "date_of_birth")
  final String dateOfBirth;
  @override
  @JsonKey(name: "place_of_birth")
  final String placeOfBirth;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  @JsonKey(name: "mobile_number")
  final String mobileNumber;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "template_id")
  final int templateId;
  @override
  @JsonKey(name: "app_created_at")
  final String createdAt;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool hasSuccess;
  @override
  @JsonKey()
  final bool hasSuccessSetAttributes;
  @override
  @JsonKey()
  final bool hasErrorSetAttributes;
  @override
  @JsonKey()
  final bool hasSuccessSetAddress;
  @override
  @JsonKey()
  final bool hasErrorSetAddress;
// @Default(true) @JsonKey(name: "is_resident") bool isResident,
  final List<AttributeModel> _attributes;
// @Default(true) @JsonKey(name: "is_resident") bool isResident,
  @override
  @JsonKey()
  List<AttributeModel> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  @JsonKey(name: "nationality")
  final String nationality;
  @override
  @JsonKey()
  final SetAddressModel address;
  final List<SetAttachmentModel> _attachments;
  @override
  @JsonKey()
  List<SetAttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'InputCreateCustomerModel(customerId: $customerId, title: $title, gender: $gender, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, email: $email, status: $status, templateId: $templateId, createdAt: $createdAt, hasError: $hasError, hasSuccess: $hasSuccess, hasSuccessSetAttributes: $hasSuccessSetAttributes, hasErrorSetAttributes: $hasErrorSetAttributes, hasSuccessSetAddress: $hasSuccessSetAddress, hasErrorSetAddress: $hasErrorSetAddress, attributes: $attributes, nationality: $nationality, address: $address, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCreateCustomerModelImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.hasSuccess, hasSuccess) ||
                other.hasSuccess == hasSuccess) &&
            (identical(
                    other.hasSuccessSetAttributes, hasSuccessSetAttributes) ||
                other.hasSuccessSetAttributes == hasSuccessSetAttributes) &&
            (identical(other.hasErrorSetAttributes, hasErrorSetAttributes) ||
                other.hasErrorSetAttributes == hasErrorSetAttributes) &&
            (identical(other.hasSuccessSetAddress, hasSuccessSetAddress) ||
                other.hasSuccessSetAddress == hasSuccessSetAddress) &&
            (identical(other.hasErrorSetAddress, hasErrorSetAddress) ||
                other.hasErrorSetAddress == hasErrorSetAddress) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerId,
        title,
        gender,
        firstName,
        lastName,
        fatherName,
        motherName,
        dateOfBirth,
        placeOfBirth,
        phoneNumber,
        mobileNumber,
        email,
        status,
        templateId,
        createdAt,
        hasError,
        hasSuccess,
        hasSuccessSetAttributes,
        hasErrorSetAttributes,
        hasSuccessSetAddress,
        hasErrorSetAddress,
        const DeepCollectionEquality().hash(_attributes),
        nationality,
        address,
        const DeepCollectionEquality().hash(_attachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCreateCustomerModelImplCopyWith<_$InputCreateCustomerModelImpl>
      get copyWith => __$$InputCreateCustomerModelImplCopyWithImpl<
          _$InputCreateCustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputCreateCustomerModelImplToJson(
      this,
    );
  }
}

abstract class _InputCreateCustomerModel implements InputCreateCustomerModel {
  factory _InputCreateCustomerModel(
          {final int? customerId,
          final String title,
          final String gender,
          @JsonKey(name: "first_name") final InputModel firstName,
          @JsonKey(name: "last_name") final InputModel lastName,
          @JsonKey(name: "father_name") final InputModel fatherName,
          @JsonKey(name: "mother_full_name") final InputModel motherName,
          @JsonKey(name: "date_of_birth") final String dateOfBirth,
          @JsonKey(name: "place_of_birth") final String placeOfBirth,
          @JsonKey(name: "phone_number") final String? phoneNumber,
          @JsonKey(name: "mobile_number") final String mobileNumber,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "status") final bool status,
          @JsonKey(name: "template_id") final int templateId,
          @JsonKey(name: "app_created_at") final String createdAt,
          final bool hasError,
          final bool hasSuccess,
          final bool hasSuccessSetAttributes,
          final bool hasErrorSetAttributes,
          final bool hasSuccessSetAddress,
          final bool hasErrorSetAddress,
          final List<AttributeModel> attributes,
          @JsonKey(name: "nationality") final String nationality,
          final SetAddressModel address,
          final List<SetAttachmentModel> attachments}) =
      _$InputCreateCustomerModelImpl;

  factory _InputCreateCustomerModel.fromJson(Map<String, dynamic> json) =
      _$InputCreateCustomerModelImpl.fromJson;

  @override
  int? get customerId;
  @override
  String get title;
  @override
  String get gender;
  @override
  @JsonKey(name: "first_name")
  InputModel get firstName;
  @override
  @JsonKey(name: "last_name")
  InputModel get lastName;
  @override
  @JsonKey(name: "father_name")
  InputModel get fatherName;
  @override
  @JsonKey(name: "mother_full_name")
  InputModel get motherName;
  @override
  @JsonKey(name: "date_of_birth")
  String get dateOfBirth;
  @override
  @JsonKey(name: "place_of_birth")
  String get placeOfBirth;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: "mobile_number")
  String get mobileNumber;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "template_id")
  int get templateId;
  @override
  @JsonKey(name: "app_created_at")
  String get createdAt;
  @override
  bool get hasError;
  @override
  bool get hasSuccess;
  @override
  bool get hasSuccessSetAttributes;
  @override
  bool get hasErrorSetAttributes;
  @override
  bool get hasSuccessSetAddress;
  @override
  bool get hasErrorSetAddress;
  @override // @Default(true) @JsonKey(name: "is_resident") bool isResident,
  List<AttributeModel> get attributes;
  @override
  @JsonKey(name: "nationality")
  String get nationality;
  @override
  SetAddressModel get address;
  @override
  List<SetAttachmentModel> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$InputCreateCustomerModelImplCopyWith<_$InputCreateCustomerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InputModel _$InputModelFromJson(Map<String, dynamic> json) {
  return _InputModel.fromJson(json);
}

/// @nodoc
mixin _$InputModel {
  String get ar => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputModelCopyWith<InputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputModelCopyWith<$Res> {
  factory $InputModelCopyWith(
          InputModel value, $Res Function(InputModel) then) =
      _$InputModelCopyWithImpl<$Res, InputModel>;
  @useResult
  $Res call({String ar, String en});
}

/// @nodoc
class _$InputModelCopyWithImpl<$Res, $Val extends InputModel>
    implements $InputModelCopyWith<$Res> {
  _$InputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = null,
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputModelImplCopyWith<$Res>
    implements $InputModelCopyWith<$Res> {
  factory _$$InputModelImplCopyWith(
          _$InputModelImpl value, $Res Function(_$InputModelImpl) then) =
      __$$InputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ar, String en});
}

/// @nodoc
class __$$InputModelImplCopyWithImpl<$Res>
    extends _$InputModelCopyWithImpl<$Res, _$InputModelImpl>
    implements _$$InputModelImplCopyWith<$Res> {
  __$$InputModelImplCopyWithImpl(
      _$InputModelImpl _value, $Res Function(_$InputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ar = null,
    Object? en = null,
  }) {
    return _then(_$InputModelImpl(
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputModelImpl implements _InputModel {
  const _$InputModelImpl({this.ar = "", this.en = ""});

  factory _$InputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputModelImplFromJson(json);

  @override
  @JsonKey()
  final String ar;
  @override
  @JsonKey()
  final String en;

  @override
  String toString() {
    return 'InputModel(ar: $ar, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputModelImpl &&
            (identical(other.ar, ar) || other.ar == ar) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ar, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputModelImplCopyWith<_$InputModelImpl> get copyWith =>
      __$$InputModelImplCopyWithImpl<_$InputModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputModelImplToJson(
      this,
    );
  }
}

abstract class _InputModel implements InputModel {
  const factory _InputModel({final String ar, final String en}) =
      _$InputModelImpl;

  factory _InputModel.fromJson(Map<String, dynamic> json) =
      _$InputModelImpl.fromJson;

  @override
  String get ar;
  @override
  String get en;
  @override
  @JsonKey(ignore: true)
  _$$InputModelImplCopyWith<_$InputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
