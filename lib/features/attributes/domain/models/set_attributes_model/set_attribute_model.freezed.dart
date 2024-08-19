// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetAttributeModel _$SetAttributeModelFromJson(Map<String, dynamic> json) {
  return _SetAttributeModel.fromJson(json);
}

/// @nodoc
mixin _$SetAttributeModel {
  @JsonKey(name: "customer_id")
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "attrs")
  List<AttributeModel> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAttributeModelCopyWith<SetAttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAttributeModelCopyWith<$Res> {
  factory $SetAttributeModelCopyWith(
          SetAttributeModel value, $Res Function(SetAttributeModel) then) =
      _$SetAttributeModelCopyWithImpl<$Res, SetAttributeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "attrs") List<AttributeModel> attributes});
}

/// @nodoc
class _$SetAttributeModelCopyWithImpl<$Res, $Val extends SetAttributeModel>
    implements $SetAttributeModelCopyWith<$Res> {
  _$SetAttributeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAttributeModelImplCopyWith<$Res>
    implements $SetAttributeModelCopyWith<$Res> {
  factory _$$SetAttributeModelImplCopyWith(_$SetAttributeModelImpl value,
          $Res Function(_$SetAttributeModelImpl) then) =
      __$$SetAttributeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "attrs") List<AttributeModel> attributes});
}

/// @nodoc
class __$$SetAttributeModelImplCopyWithImpl<$Res>
    extends _$SetAttributeModelCopyWithImpl<$Res, _$SetAttributeModelImpl>
    implements _$$SetAttributeModelImplCopyWith<$Res> {
  __$$SetAttributeModelImplCopyWithImpl(_$SetAttributeModelImpl _value,
      $Res Function(_$SetAttributeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? attributes = null,
  }) {
    return _then(_$SetAttributeModelImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAttributeModelImpl implements _SetAttributeModel {
  _$SetAttributeModelImpl(
      {@JsonKey(name: "customer_id") this.customerId = 0,
      @JsonKey(name: "attrs") final List<AttributeModel> attributes = const []})
      : _attributes = attributes;

  factory _$SetAttributeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAttributeModelImplFromJson(json);

  @override
  @JsonKey(name: "customer_id")
  final int customerId;
  final List<AttributeModel> _attributes;
  @override
  @JsonKey(name: "attrs")
  List<AttributeModel> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'SetAttributeModel(customerId: $customerId, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAttributeModelImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerId,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAttributeModelImplCopyWith<_$SetAttributeModelImpl> get copyWith =>
      __$$SetAttributeModelImplCopyWithImpl<_$SetAttributeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAttributeModelImplToJson(
      this,
    );
  }
}

abstract class _SetAttributeModel implements SetAttributeModel {
  factory _SetAttributeModel(
          {@JsonKey(name: "customer_id") final int customerId,
          @JsonKey(name: "attrs") final List<AttributeModel> attributes}) =
      _$SetAttributeModelImpl;

  factory _SetAttributeModel.fromJson(Map<String, dynamic> json) =
      _$SetAttributeModelImpl.fromJson;

  @override
  @JsonKey(name: "customer_id")
  int get customerId;
  @override
  @JsonKey(name: "attrs")
  List<AttributeModel> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$SetAttributeModelImplCopyWith<_$SetAttributeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) {
  return _AttributeModel.fromJson(json);
}

/// @nodoc
mixin _$AttributeModel {
  @JsonKey(name: "attribute_id")
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeModelCopyWith<AttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeModelCopyWith<$Res> {
  factory $AttributeModelCopyWith(
          AttributeModel value, $Res Function(AttributeModel) then) =
      _$AttributeModelCopyWithImpl<$Res, AttributeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_id") int attributeId,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class _$AttributeModelCopyWithImpl<$Res, $Val extends AttributeModel>
    implements $AttributeModelCopyWith<$Res> {
  _$AttributeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributeModelImplCopyWith<$Res>
    implements $AttributeModelCopyWith<$Res> {
  factory _$$AttributeModelImplCopyWith(_$AttributeModelImpl value,
          $Res Function(_$AttributeModelImpl) then) =
      __$$AttributeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_id") int attributeId,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class __$$AttributeModelImplCopyWithImpl<$Res>
    extends _$AttributeModelCopyWithImpl<$Res, _$AttributeModelImpl>
    implements _$$AttributeModelImplCopyWith<$Res> {
  __$$AttributeModelImplCopyWithImpl(
      _$AttributeModelImpl _value, $Res Function(_$AttributeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? value = null,
  }) {
    return _then(_$AttributeModelImpl(
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeModelImpl implements _AttributeModel {
  const _$AttributeModelImpl(
      {@JsonKey(name: "attribute_id") this.attributeId = 0,
      @JsonKey(name: "value") this.value = ""});

  factory _$AttributeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeModelImplFromJson(json);

  @override
  @JsonKey(name: "attribute_id")
  final int attributeId;
  @override
  @JsonKey(name: "value")
  final String value;

  @override
  String toString() {
    return 'AttributeModel(attributeId: $attributeId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeModelImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributeId, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeModelImplCopyWith<_$AttributeModelImpl> get copyWith =>
      __$$AttributeModelImplCopyWithImpl<_$AttributeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeModelImplToJson(
      this,
    );
  }
}

abstract class _AttributeModel implements AttributeModel {
  const factory _AttributeModel(
      {@JsonKey(name: "attribute_id") final int attributeId,
      @JsonKey(name: "value") final String value}) = _$AttributeModelImpl;

  factory _AttributeModel.fromJson(Map<String, dynamic> json) =
      _$AttributeModelImpl.fromJson;

  @override
  @JsonKey(name: "attribute_id")
  int get attributeId;
  @override
  @JsonKey(name: "value")
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AttributeModelImplCopyWith<_$AttributeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
