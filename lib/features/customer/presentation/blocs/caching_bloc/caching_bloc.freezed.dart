// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caching_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CachingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateCustomerModel customer)
        cachingCustomerBasicInfo,
    required TResult Function() getCustomersCaching,
    required TResult Function(String createAt) deleteCustomerCache,
    required TResult Function(int filterType) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult? Function()? getCustomersCaching,
    TResult? Function(String createAt)? deleteCustomerCache,
    TResult? Function(int filterType)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult Function()? getCustomersCaching,
    TResult Function(String createAt)? deleteCustomerCache,
    TResult Function(int filterType)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerBasicInfo value)
        cachingCustomerBasicInfo,
    required TResult Function(_GetCustomerBasicInfo value) getCustomersCaching,
    required TResult Function(_DeleteCustomerCache value) deleteCustomerCache,
    required TResult Function(_ReplaceCustomerInfoCache value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult? Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult? Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult? Function(_ReplaceCustomerInfoCache value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult Function(_ReplaceCustomerInfoCache value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachingEventCopyWith<$Res> {
  factory $CachingEventCopyWith(
          CachingEvent value, $Res Function(CachingEvent) then) =
      _$CachingEventCopyWithImpl<$Res, CachingEvent>;
}

/// @nodoc
class _$CachingEventCopyWithImpl<$Res, $Val extends CachingEvent>
    implements $CachingEventCopyWith<$Res> {
  _$CachingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomerBasicInfoImplCopyWith<$Res> {
  factory _$$CustomerBasicInfoImplCopyWith(_$CustomerBasicInfoImpl value,
          $Res Function(_$CustomerBasicInfoImpl) then) =
      __$$CustomerBasicInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputCreateCustomerModel customer});

  $InputCreateCustomerModelCopyWith<$Res> get customer;
}

/// @nodoc
class __$$CustomerBasicInfoImplCopyWithImpl<$Res>
    extends _$CachingEventCopyWithImpl<$Res, _$CustomerBasicInfoImpl>
    implements _$$CustomerBasicInfoImplCopyWith<$Res> {
  __$$CustomerBasicInfoImplCopyWithImpl(_$CustomerBasicInfoImpl _value,
      $Res Function(_$CustomerBasicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$CustomerBasicInfoImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as InputCreateCustomerModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputCreateCustomerModelCopyWith<$Res> get customer {
    return $InputCreateCustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$CustomerBasicInfoImpl implements _CustomerBasicInfo {
  const _$CustomerBasicInfoImpl({required this.customer});

  @override
  final InputCreateCustomerModel customer;

  @override
  String toString() {
    return 'CachingEvent.cachingCustomerBasicInfo(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerBasicInfoImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerBasicInfoImplCopyWith<_$CustomerBasicInfoImpl> get copyWith =>
      __$$CustomerBasicInfoImplCopyWithImpl<_$CustomerBasicInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateCustomerModel customer)
        cachingCustomerBasicInfo,
    required TResult Function() getCustomersCaching,
    required TResult Function(String createAt) deleteCustomerCache,
    required TResult Function(int filterType) filter,
  }) {
    return cachingCustomerBasicInfo(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult? Function()? getCustomersCaching,
    TResult? Function(String createAt)? deleteCustomerCache,
    TResult? Function(int filterType)? filter,
  }) {
    return cachingCustomerBasicInfo?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult Function()? getCustomersCaching,
    TResult Function(String createAt)? deleteCustomerCache,
    TResult Function(int filterType)? filter,
    required TResult orElse(),
  }) {
    if (cachingCustomerBasicInfo != null) {
      return cachingCustomerBasicInfo(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerBasicInfo value)
        cachingCustomerBasicInfo,
    required TResult Function(_GetCustomerBasicInfo value) getCustomersCaching,
    required TResult Function(_DeleteCustomerCache value) deleteCustomerCache,
    required TResult Function(_ReplaceCustomerInfoCache value) filter,
  }) {
    return cachingCustomerBasicInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult? Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult? Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult? Function(_ReplaceCustomerInfoCache value)? filter,
  }) {
    return cachingCustomerBasicInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult Function(_ReplaceCustomerInfoCache value)? filter,
    required TResult orElse(),
  }) {
    if (cachingCustomerBasicInfo != null) {
      return cachingCustomerBasicInfo(this);
    }
    return orElse();
  }
}

abstract class _CustomerBasicInfo implements CachingEvent {
  const factory _CustomerBasicInfo(
          {required final InputCreateCustomerModel customer}) =
      _$CustomerBasicInfoImpl;

  InputCreateCustomerModel get customer;
  @JsonKey(ignore: true)
  _$$CustomerBasicInfoImplCopyWith<_$CustomerBasicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerBasicInfoImplCopyWith<$Res> {
  factory _$$GetCustomerBasicInfoImplCopyWith(_$GetCustomerBasicInfoImpl value,
          $Res Function(_$GetCustomerBasicInfoImpl) then) =
      __$$GetCustomerBasicInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCustomerBasicInfoImplCopyWithImpl<$Res>
    extends _$CachingEventCopyWithImpl<$Res, _$GetCustomerBasicInfoImpl>
    implements _$$GetCustomerBasicInfoImplCopyWith<$Res> {
  __$$GetCustomerBasicInfoImplCopyWithImpl(_$GetCustomerBasicInfoImpl _value,
      $Res Function(_$GetCustomerBasicInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCustomerBasicInfoImpl implements _GetCustomerBasicInfo {
  const _$GetCustomerBasicInfoImpl();

  @override
  String toString() {
    return 'CachingEvent.getCustomersCaching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerBasicInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateCustomerModel customer)
        cachingCustomerBasicInfo,
    required TResult Function() getCustomersCaching,
    required TResult Function(String createAt) deleteCustomerCache,
    required TResult Function(int filterType) filter,
  }) {
    return getCustomersCaching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult? Function()? getCustomersCaching,
    TResult? Function(String createAt)? deleteCustomerCache,
    TResult? Function(int filterType)? filter,
  }) {
    return getCustomersCaching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult Function()? getCustomersCaching,
    TResult Function(String createAt)? deleteCustomerCache,
    TResult Function(int filterType)? filter,
    required TResult orElse(),
  }) {
    if (getCustomersCaching != null) {
      return getCustomersCaching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerBasicInfo value)
        cachingCustomerBasicInfo,
    required TResult Function(_GetCustomerBasicInfo value) getCustomersCaching,
    required TResult Function(_DeleteCustomerCache value) deleteCustomerCache,
    required TResult Function(_ReplaceCustomerInfoCache value) filter,
  }) {
    return getCustomersCaching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult? Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult? Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult? Function(_ReplaceCustomerInfoCache value)? filter,
  }) {
    return getCustomersCaching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult Function(_ReplaceCustomerInfoCache value)? filter,
    required TResult orElse(),
  }) {
    if (getCustomersCaching != null) {
      return getCustomersCaching(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerBasicInfo implements CachingEvent {
  const factory _GetCustomerBasicInfo() = _$GetCustomerBasicInfoImpl;
}

/// @nodoc
abstract class _$$DeleteCustomerCacheImplCopyWith<$Res> {
  factory _$$DeleteCustomerCacheImplCopyWith(_$DeleteCustomerCacheImpl value,
          $Res Function(_$DeleteCustomerCacheImpl) then) =
      __$$DeleteCustomerCacheImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String createAt});
}

/// @nodoc
class __$$DeleteCustomerCacheImplCopyWithImpl<$Res>
    extends _$CachingEventCopyWithImpl<$Res, _$DeleteCustomerCacheImpl>
    implements _$$DeleteCustomerCacheImplCopyWith<$Res> {
  __$$DeleteCustomerCacheImplCopyWithImpl(_$DeleteCustomerCacheImpl _value,
      $Res Function(_$DeleteCustomerCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAt = null,
  }) {
    return _then(_$DeleteCustomerCacheImpl(
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCustomerCacheImpl implements _DeleteCustomerCache {
  const _$DeleteCustomerCacheImpl({required this.createAt});

  @override
  final String createAt;

  @override
  String toString() {
    return 'CachingEvent.deleteCustomerCache(createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCustomerCacheImpl &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCustomerCacheImplCopyWith<_$DeleteCustomerCacheImpl> get copyWith =>
      __$$DeleteCustomerCacheImplCopyWithImpl<_$DeleteCustomerCacheImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateCustomerModel customer)
        cachingCustomerBasicInfo,
    required TResult Function() getCustomersCaching,
    required TResult Function(String createAt) deleteCustomerCache,
    required TResult Function(int filterType) filter,
  }) {
    return deleteCustomerCache(createAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult? Function()? getCustomersCaching,
    TResult? Function(String createAt)? deleteCustomerCache,
    TResult? Function(int filterType)? filter,
  }) {
    return deleteCustomerCache?.call(createAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult Function()? getCustomersCaching,
    TResult Function(String createAt)? deleteCustomerCache,
    TResult Function(int filterType)? filter,
    required TResult orElse(),
  }) {
    if (deleteCustomerCache != null) {
      return deleteCustomerCache(createAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerBasicInfo value)
        cachingCustomerBasicInfo,
    required TResult Function(_GetCustomerBasicInfo value) getCustomersCaching,
    required TResult Function(_DeleteCustomerCache value) deleteCustomerCache,
    required TResult Function(_ReplaceCustomerInfoCache value) filter,
  }) {
    return deleteCustomerCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult? Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult? Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult? Function(_ReplaceCustomerInfoCache value)? filter,
  }) {
    return deleteCustomerCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult Function(_ReplaceCustomerInfoCache value)? filter,
    required TResult orElse(),
  }) {
    if (deleteCustomerCache != null) {
      return deleteCustomerCache(this);
    }
    return orElse();
  }
}

abstract class _DeleteCustomerCache implements CachingEvent {
  const factory _DeleteCustomerCache({required final String createAt}) =
      _$DeleteCustomerCacheImpl;

  String get createAt;
  @JsonKey(ignore: true)
  _$$DeleteCustomerCacheImplCopyWith<_$DeleteCustomerCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplaceCustomerInfoCacheImplCopyWith<$Res> {
  factory _$$ReplaceCustomerInfoCacheImplCopyWith(
          _$ReplaceCustomerInfoCacheImpl value,
          $Res Function(_$ReplaceCustomerInfoCacheImpl) then) =
      __$$ReplaceCustomerInfoCacheImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int filterType});
}

/// @nodoc
class __$$ReplaceCustomerInfoCacheImplCopyWithImpl<$Res>
    extends _$CachingEventCopyWithImpl<$Res, _$ReplaceCustomerInfoCacheImpl>
    implements _$$ReplaceCustomerInfoCacheImplCopyWith<$Res> {
  __$$ReplaceCustomerInfoCacheImplCopyWithImpl(
      _$ReplaceCustomerInfoCacheImpl _value,
      $Res Function(_$ReplaceCustomerInfoCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterType = null,
  }) {
    return _then(_$ReplaceCustomerInfoCacheImpl(
      filterType: null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReplaceCustomerInfoCacheImpl implements _ReplaceCustomerInfoCache {
  const _$ReplaceCustomerInfoCacheImpl({required this.filterType});

  @override
  final int filterType;

  @override
  String toString() {
    return 'CachingEvent.filter(filterType: $filterType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplaceCustomerInfoCacheImpl &&
            (identical(other.filterType, filterType) ||
                other.filterType == filterType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplaceCustomerInfoCacheImplCopyWith<_$ReplaceCustomerInfoCacheImpl>
      get copyWith => __$$ReplaceCustomerInfoCacheImplCopyWithImpl<
          _$ReplaceCustomerInfoCacheImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateCustomerModel customer)
        cachingCustomerBasicInfo,
    required TResult Function() getCustomersCaching,
    required TResult Function(String createAt) deleteCustomerCache,
    required TResult Function(int filterType) filter,
  }) {
    return filter(filterType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult? Function()? getCustomersCaching,
    TResult? Function(String createAt)? deleteCustomerCache,
    TResult? Function(int filterType)? filter,
  }) {
    return filter?.call(filterType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateCustomerModel customer)?
        cachingCustomerBasicInfo,
    TResult Function()? getCustomersCaching,
    TResult Function(String createAt)? deleteCustomerCache,
    TResult Function(int filterType)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(filterType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerBasicInfo value)
        cachingCustomerBasicInfo,
    required TResult Function(_GetCustomerBasicInfo value) getCustomersCaching,
    required TResult Function(_DeleteCustomerCache value) deleteCustomerCache,
    required TResult Function(_ReplaceCustomerInfoCache value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult? Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult? Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult? Function(_ReplaceCustomerInfoCache value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerBasicInfo value)? cachingCustomerBasicInfo,
    TResult Function(_GetCustomerBasicInfo value)? getCustomersCaching,
    TResult Function(_DeleteCustomerCache value)? deleteCustomerCache,
    TResult Function(_ReplaceCustomerInfoCache value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _ReplaceCustomerInfoCache implements CachingEvent {
  const factory _ReplaceCustomerInfoCache({required final int filterType}) =
      _$ReplaceCustomerInfoCacheImpl;

  int get filterType;
  @JsonKey(ignore: true)
  _$$ReplaceCustomerInfoCacheImplCopyWith<_$ReplaceCustomerInfoCacheImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CachingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachingStateCopyWith<$Res> {
  factory $CachingStateCopyWith(
          CachingState value, $Res Function(CachingState) then) =
      _$CachingStateCopyWithImpl<$Res, CachingState>;
}

/// @nodoc
class _$CachingStateCopyWithImpl<$Res, $Val extends CachingState>
    implements $CachingStateCopyWith<$Res> {
  _$CachingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CachingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CachingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CachingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CachingState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SetSuccessImplCopyWith<$Res> {
  factory _$$SetSuccessImplCopyWith(
          _$SetSuccessImpl value, $Res Function(_$SetSuccessImpl) then) =
      __$$SetSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SetSuccessImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$SetSuccessImpl>
    implements _$$SetSuccessImplCopyWith<$Res> {
  __$$SetSuccessImplCopyWithImpl(
      _$SetSuccessImpl _value, $Res Function(_$SetSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SetSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSuccessImpl implements _SetSuccess {
  const _$SetSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CachingState.setSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSuccessImplCopyWith<_$SetSuccessImpl> get copyWith =>
      __$$SetSuccessImplCopyWithImpl<_$SetSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return setSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return setSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (setSuccess != null) {
      return setSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return setSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return setSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (setSuccess != null) {
      return setSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetSuccess implements CachingState {
  const factory _SetSuccess({required final String message}) = _$SetSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SetSuccessImplCopyWith<_$SetSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplacedSuccessImplCopyWith<$Res> {
  factory _$$ReplacedSuccessImplCopyWith(_$ReplacedSuccessImpl value,
          $Res Function(_$ReplacedSuccessImpl) then) =
      __$$ReplacedSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReplacedSuccessImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$ReplacedSuccessImpl>
    implements _$$ReplacedSuccessImplCopyWith<$Res> {
  __$$ReplacedSuccessImplCopyWithImpl(
      _$ReplacedSuccessImpl _value, $Res Function(_$ReplacedSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReplacedSuccessImpl implements _ReplacedSuccess {
  const _$ReplacedSuccessImpl();

  @override
  String toString() {
    return 'CachingState.replacedSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReplacedSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return replacedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return replacedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (replacedSuccess != null) {
      return replacedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return replacedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return replacedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (replacedSuccess != null) {
      return replacedSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReplacedSuccess implements CachingState {
  const factory _ReplacedSuccess() = _$ReplacedSuccessImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InputCreateCustomerModel> customersInput});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customersInput = null,
  }) {
    return _then(_$SuccessImpl(
      customersInput: null == customersInput
          ? _value._customersInput
          : customersInput // ignore: cast_nullable_to_non_nullable
              as List<InputCreateCustomerModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<InputCreateCustomerModel> customersInput})
      : _customersInput = customersInput;

  final List<InputCreateCustomerModel> _customersInput;
  @override
  List<InputCreateCustomerModel> get customersInput {
    if (_customersInput is EqualUnmodifiableListView) return _customersInput;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customersInput);
  }

  @override
  String toString() {
    return 'CachingState.success(customersInput: $customersInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._customersInput, _customersInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customersInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return success(customersInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return success?.call(customersInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(customersInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CachingState {
  const factory _Success(
          {required final List<InputCreateCustomerModel> customersInput}) =
      _$SuccessImpl;

  List<InputCreateCustomerModel> get customersInput;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessFilterImplCopyWith<$Res> {
  factory _$$SuccessFilterImplCopyWith(
          _$SuccessFilterImpl value, $Res Function(_$SuccessFilterImpl) then) =
      __$$SuccessFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InputCreateCustomerModel> customersInput});
}

/// @nodoc
class __$$SuccessFilterImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$SuccessFilterImpl>
    implements _$$SuccessFilterImplCopyWith<$Res> {
  __$$SuccessFilterImplCopyWithImpl(
      _$SuccessFilterImpl _value, $Res Function(_$SuccessFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customersInput = null,
  }) {
    return _then(_$SuccessFilterImpl(
      customersInput: null == customersInput
          ? _value._customersInput
          : customersInput // ignore: cast_nullable_to_non_nullable
              as List<InputCreateCustomerModel>,
    ));
  }
}

/// @nodoc

class _$SuccessFilterImpl implements _SuccessFilter {
  const _$SuccessFilterImpl(
      {required final List<InputCreateCustomerModel> customersInput})
      : _customersInput = customersInput;

  final List<InputCreateCustomerModel> _customersInput;
  @override
  List<InputCreateCustomerModel> get customersInput {
    if (_customersInput is EqualUnmodifiableListView) return _customersInput;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customersInput);
  }

  @override
  String toString() {
    return 'CachingState.successFilter(customersInput: $customersInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFilterImpl &&
            const DeepCollectionEquality()
                .equals(other._customersInput, _customersInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customersInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFilterImplCopyWith<_$SuccessFilterImpl> get copyWith =>
      __$$SuccessFilterImplCopyWithImpl<_$SuccessFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return successFilter(customersInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return successFilter?.call(customersInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successFilter != null) {
      return successFilter(customersInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return successFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return successFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successFilter != null) {
      return successFilter(this);
    }
    return orElse();
  }
}

abstract class _SuccessFilter implements CachingState {
  const factory _SuccessFilter(
          {required final List<InputCreateCustomerModel> customersInput}) =
      _$SuccessFilterImpl;

  List<InputCreateCustomerModel> get customersInput;
  @JsonKey(ignore: true)
  _$$SuccessFilterImplCopyWith<_$SuccessFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CachingStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CachingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) setSuccess,
    required TResult Function() replacedSuccess,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        success,
    required TResult Function(List<InputCreateCustomerModel> customersInput)
        successFilter,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? setSuccess,
    TResult? Function()? replacedSuccess,
    TResult? Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult? Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? setSuccess,
    TResult Function()? replacedSuccess,
    TResult Function(List<InputCreateCustomerModel> customersInput)? success,
    TResult Function(List<InputCreateCustomerModel> customersInput)?
        successFilter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SetSuccess value) setSuccess,
    required TResult Function(_ReplacedSuccess value) replacedSuccess,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessFilter value) successFilter,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SetSuccess value)? setSuccess,
    TResult? Function(_ReplacedSuccess value)? replacedSuccess,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessFilter value)? successFilter,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SetSuccess value)? setSuccess,
    TResult Function(_ReplacedSuccess value)? replacedSuccess,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessFilter value)? successFilter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CachingState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
