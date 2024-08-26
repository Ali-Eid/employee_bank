// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCustomerModel _$CreateCustomerModelFromJson(Map<String, dynamic> json) {
  return _CreateCustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CreateCustomerModel {
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
  @JsonKey(name: "nationality")
  String get nationality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCustomerModelCopyWith<CreateCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCustomerModelCopyWith<$Res> {
  factory $CreateCustomerModelCopyWith(
          CreateCustomerModel value, $Res Function(CreateCustomerModel) then) =
      _$CreateCustomerModelCopyWithImpl<$Res, CreateCustomerModel>;
  @useResult
  $Res call(
      {String title,
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
      @JsonKey(name: "nationality") String nationality});

  $InputModelCopyWith<$Res> get firstName;
  $InputModelCopyWith<$Res> get lastName;
  $InputModelCopyWith<$Res> get fatherName;
  $InputModelCopyWith<$Res> get motherName;
}

/// @nodoc
class _$CreateCustomerModelCopyWithImpl<$Res, $Val extends CreateCustomerModel>
    implements $CreateCustomerModelCopyWith<$Res> {
  _$CreateCustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? nationality = null,
  }) {
    return _then(_value.copyWith(
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
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$CreateCustomerModelImplCopyWith<$Res>
    implements $CreateCustomerModelCopyWith<$Res> {
  factory _$$CreateCustomerModelImplCopyWith(_$CreateCustomerModelImpl value,
          $Res Function(_$CreateCustomerModelImpl) then) =
      __$$CreateCustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
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
      @JsonKey(name: "nationality") String nationality});

  @override
  $InputModelCopyWith<$Res> get firstName;
  @override
  $InputModelCopyWith<$Res> get lastName;
  @override
  $InputModelCopyWith<$Res> get fatherName;
  @override
  $InputModelCopyWith<$Res> get motherName;
}

/// @nodoc
class __$$CreateCustomerModelImplCopyWithImpl<$Res>
    extends _$CreateCustomerModelCopyWithImpl<$Res, _$CreateCustomerModelImpl>
    implements _$$CreateCustomerModelImplCopyWith<$Res> {
  __$$CreateCustomerModelImplCopyWithImpl(_$CreateCustomerModelImpl _value,
      $Res Function(_$CreateCustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? nationality = null,
  }) {
    return _then(_$CreateCustomerModelImpl(
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
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCustomerModelImpl implements _CreateCustomerModel {
  _$CreateCustomerModelImpl(
      {this.title = "",
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
      @JsonKey(name: "nationality") this.nationality = ""});

  factory _$CreateCustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCustomerModelImplFromJson(json);

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
  @JsonKey(name: "nationality")
  final String nationality;

  @override
  String toString() {
    return 'CreateCustomerModel(title: $title, gender: $gender, firstName: $firstName, lastName: $lastName, fatherName: $fatherName, motherName: $motherName, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, phoneNumber: $phoneNumber, mobileNumber: $mobileNumber, email: $email, status: $status, templateId: $templateId, createdAt: $createdAt, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCustomerModelImpl &&
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
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      nationality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCustomerModelImplCopyWith<_$CreateCustomerModelImpl> get copyWith =>
      __$$CreateCustomerModelImplCopyWithImpl<_$CreateCustomerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CreateCustomerModel implements CreateCustomerModel {
  factory _CreateCustomerModel(
          {final String title,
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
          @JsonKey(name: "nationality") final String nationality}) =
      _$CreateCustomerModelImpl;

  factory _CreateCustomerModel.fromJson(Map<String, dynamic> json) =
      _$CreateCustomerModelImpl.fromJson;

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
  @JsonKey(name: "nationality")
  String get nationality;
  @override
  @JsonKey(ignore: true)
  _$$CreateCustomerModelImplCopyWith<_$CreateCustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
