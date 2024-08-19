// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_attachments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetAttachmentModel _$SetAttachmentModelFromJson(Map<String, dynamic> json) {
  return _SetAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$SetAttachmentModel {
  String get file => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_id")
  int get attributeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isUploaded => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAttachmentModelCopyWith<SetAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAttachmentModelCopyWith<$Res> {
  factory $SetAttachmentModelCopyWith(
          SetAttachmentModel value, $Res Function(SetAttachmentModel) then) =
      _$SetAttachmentModelCopyWithImpl<$Res, SetAttachmentModel>;
  @useResult
  $Res call(
      {String file,
      @JsonKey(name: "attribute_id") int attributeId,
      String name,
      bool isUploaded,
      bool hasError});
}

/// @nodoc
class _$SetAttachmentModelCopyWithImpl<$Res, $Val extends SetAttachmentModel>
    implements $SetAttachmentModelCopyWith<$Res> {
  _$SetAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? attributeId = null,
    Object? name = null,
    Object? isUploaded = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isUploaded: null == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAttachmentModelImplCopyWith<$Res>
    implements $SetAttachmentModelCopyWith<$Res> {
  factory _$$SetAttachmentModelImplCopyWith(_$SetAttachmentModelImpl value,
          $Res Function(_$SetAttachmentModelImpl) then) =
      __$$SetAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String file,
      @JsonKey(name: "attribute_id") int attributeId,
      String name,
      bool isUploaded,
      bool hasError});
}

/// @nodoc
class __$$SetAttachmentModelImplCopyWithImpl<$Res>
    extends _$SetAttachmentModelCopyWithImpl<$Res, _$SetAttachmentModelImpl>
    implements _$$SetAttachmentModelImplCopyWith<$Res> {
  __$$SetAttachmentModelImplCopyWithImpl(_$SetAttachmentModelImpl _value,
      $Res Function(_$SetAttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? attributeId = null,
    Object? name = null,
    Object? isUploaded = null,
    Object? hasError = null,
  }) {
    return _then(_$SetAttachmentModelImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isUploaded: null == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAttachmentModelImpl implements _SetAttachmentModel {
  _$SetAttachmentModelImpl(
      {this.file = "",
      @JsonKey(name: "attribute_id") this.attributeId = 0,
      this.name = "",
      this.isUploaded = false,
      this.hasError = false});

  factory _$SetAttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAttachmentModelImplFromJson(json);

  @override
  @JsonKey()
  final String file;
  @override
  @JsonKey(name: "attribute_id")
  final int attributeId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final bool isUploaded;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'SetAttachmentModel(file: $file, attributeId: $attributeId, name: $name, isUploaded: $isUploaded, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAttachmentModelImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isUploaded, isUploaded) ||
                other.isUploaded == isUploaded) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, file, attributeId, name, isUploaded, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAttachmentModelImplCopyWith<_$SetAttachmentModelImpl> get copyWith =>
      __$$SetAttachmentModelImplCopyWithImpl<_$SetAttachmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _SetAttachmentModel implements SetAttachmentModel {
  factory _SetAttachmentModel(
      {final String file,
      @JsonKey(name: "attribute_id") final int attributeId,
      final String name,
      final bool isUploaded,
      final bool hasError}) = _$SetAttachmentModelImpl;

  factory _SetAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$SetAttachmentModelImpl.fromJson;

  @override
  String get file;
  @override
  @JsonKey(name: "attribute_id")
  int get attributeId;
  @override
  String get name;
  @override
  bool get isUploaded;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$SetAttachmentModelImplCopyWith<_$SetAttachmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
