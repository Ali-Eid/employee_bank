// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) {
  return _AttributesModel.fromJson(json);
}

/// @nodoc
mixin _$AttributesModel {
  StaticModel get template => throw _privateConstructorUsedError;
  List<AttributesDataModel> get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesModelCopyWith<AttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesModelCopyWith<$Res> {
  factory $AttributesModelCopyWith(
          AttributesModel value, $Res Function(AttributesModel) then) =
      _$AttributesModelCopyWithImpl<$Res, AttributesModel>;
  @useResult
  $Res call({StaticModel template, List<AttributesDataModel> attributes});

  $StaticModelCopyWith<$Res> get template;
}

/// @nodoc
class _$AttributesModelCopyWithImpl<$Res, $Val extends AttributesModel>
    implements $AttributesModelCopyWith<$Res> {
  _$AttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesDataModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticModelCopyWith<$Res> get template {
    return $StaticModelCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributesModelImplCopyWith<$Res>
    implements $AttributesModelCopyWith<$Res> {
  factory _$$AttributesModelImplCopyWith(_$AttributesModelImpl value,
          $Res Function(_$AttributesModelImpl) then) =
      __$$AttributesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StaticModel template, List<AttributesDataModel> attributes});

  @override
  $StaticModelCopyWith<$Res> get template;
}

/// @nodoc
class __$$AttributesModelImplCopyWithImpl<$Res>
    extends _$AttributesModelCopyWithImpl<$Res, _$AttributesModelImpl>
    implements _$$AttributesModelImplCopyWith<$Res> {
  __$$AttributesModelImplCopyWithImpl(
      _$AttributesModelImpl _value, $Res Function(_$AttributesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
    Object? attributes = null,
  }) {
    return _then(_$AttributesModelImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributesDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesModelImpl implements _AttributesModel {
  _$AttributesModelImpl(
      {this.template = const StaticModel(),
      final List<AttributesDataModel> attributes = const []})
      : _attributes = attributes;

  factory _$AttributesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesModelImplFromJson(json);

  @override
  @JsonKey()
  final StaticModel template;
  final List<AttributesDataModel> _attributes;
  @override
  @JsonKey()
  List<AttributesDataModel> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'AttributesModel(template: $template, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesModelImpl &&
            (identical(other.template, template) ||
                other.template == template) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, template, const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesModelImplCopyWith<_$AttributesModelImpl> get copyWith =>
      __$$AttributesModelImplCopyWithImpl<_$AttributesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesModelImplToJson(
      this,
    );
  }
}

abstract class _AttributesModel implements AttributesModel {
  factory _AttributesModel(
      {final StaticModel template,
      final List<AttributesDataModel> attributes}) = _$AttributesModelImpl;

  factory _AttributesModel.fromJson(Map<String, dynamic> json) =
      _$AttributesModelImpl.fromJson;

  @override
  StaticModel get template;
  @override
  List<AttributesDataModel> get attributes;
  @override
  @JsonKey(ignore: true)
  _$$AttributesModelImplCopyWith<_$AttributesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributesDataModel _$AttributesDataModelFromJson(Map<String, dynamic> json) {
  return _AttributesDataModel.fromJson(json);
}

/// @nodoc
mixin _$AttributesDataModel {
  int get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  InputType? get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get value => throw _privateConstructorUsedError;
  int get attribute_template_id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_required")
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesDataModelCopyWith<AttributesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesDataModelCopyWith<$Res> {
  factory $AttributesDataModelCopyWith(
          AttributesDataModel value, $Res Function(AttributesDataModel) then) =
      _$AttributesDataModelCopyWithImpl<$Res, AttributesDataModel>;
  @useResult
  $Res call(
      {int id,
      String label,
      InputType? type,
      Map<String, dynamic> value,
      int attribute_template_id,
      @JsonKey(name: "is_required") bool isRequired,
      @JsonKey(name: "is_active") bool isActive});
}

/// @nodoc
class _$AttributesDataModelCopyWithImpl<$Res, $Val extends AttributesDataModel>
    implements $AttributesDataModelCopyWith<$Res> {
  _$AttributesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = freezed,
    Object? value = null,
    Object? attribute_template_id = null,
    Object? isRequired = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputType?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      attribute_template_id: null == attribute_template_id
          ? _value.attribute_template_id
          : attribute_template_id // ignore: cast_nullable_to_non_nullable
              as int,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributesDataModelImplCopyWith<$Res>
    implements $AttributesDataModelCopyWith<$Res> {
  factory _$$AttributesDataModelImplCopyWith(_$AttributesDataModelImpl value,
          $Res Function(_$AttributesDataModelImpl) then) =
      __$$AttributesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String label,
      InputType? type,
      Map<String, dynamic> value,
      int attribute_template_id,
      @JsonKey(name: "is_required") bool isRequired,
      @JsonKey(name: "is_active") bool isActive});
}

/// @nodoc
class __$$AttributesDataModelImplCopyWithImpl<$Res>
    extends _$AttributesDataModelCopyWithImpl<$Res, _$AttributesDataModelImpl>
    implements _$$AttributesDataModelImplCopyWith<$Res> {
  __$$AttributesDataModelImplCopyWithImpl(_$AttributesDataModelImpl _value,
      $Res Function(_$AttributesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? type = freezed,
    Object? value = null,
    Object? attribute_template_id = null,
    Object? isRequired = null,
    Object? isActive = null,
  }) {
    return _then(_$AttributesDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputType?,
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      attribute_template_id: null == attribute_template_id
          ? _value.attribute_template_id
          : attribute_template_id // ignore: cast_nullable_to_non_nullable
              as int,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesDataModelImpl implements _AttributesDataModel {
  _$AttributesDataModelImpl(
      {this.id = 0,
      this.label = "",
      this.type,
      final Map<String, dynamic> value = const {},
      this.attribute_template_id = 0,
      @JsonKey(name: "is_required") this.isRequired = true,
      @JsonKey(name: "is_active") this.isActive = true})
      : _value = value;

  factory _$AttributesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String label;
  @override
  final InputType? type;
  final Map<String, dynamic> _value;
  @override
  @JsonKey()
  Map<String, dynamic> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @override
  @JsonKey()
  final int attribute_template_id;
  @override
  @JsonKey(name: "is_required")
  final bool isRequired;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;

  @override
  String toString() {
    return 'AttributesDataModel(id: $id, label: $label, type: $type, value: $value, attribute_template_id: $attribute_template_id, isRequired: $isRequired, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.attribute_template_id, attribute_template_id) ||
                other.attribute_template_id == attribute_template_id) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      type,
      const DeepCollectionEquality().hash(_value),
      attribute_template_id,
      isRequired,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesDataModelImplCopyWith<_$AttributesDataModelImpl> get copyWith =>
      __$$AttributesDataModelImplCopyWithImpl<_$AttributesDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesDataModelImplToJson(
      this,
    );
  }
}

abstract class _AttributesDataModel implements AttributesDataModel {
  factory _AttributesDataModel(
          {final int id,
          final String label,
          final InputType? type,
          final Map<String, dynamic> value,
          final int attribute_template_id,
          @JsonKey(name: "is_required") final bool isRequired,
          @JsonKey(name: "is_active") final bool isActive}) =
      _$AttributesDataModelImpl;

  factory _AttributesDataModel.fromJson(Map<String, dynamic> json) =
      _$AttributesDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get label;
  @override
  InputType? get type;
  @override
  Map<String, dynamic> get value;
  @override
  int get attribute_template_id;
  @override
  @JsonKey(name: "is_required")
  bool get isRequired;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$AttributesDataModelImplCopyWith<_$AttributesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
