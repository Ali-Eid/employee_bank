part of 'set_attribute_bloc.dart';

@freezed
class SetAttributeState with _$SetAttributeState {
  const factory SetAttributeState.initial() = _Initial;
  const factory SetAttributeState.loading() = _Loading;
  const factory SetAttributeState.success({required ResponseModel success}) =
      _Success;
  const factory SetAttributeState.error({required String message}) = _Error;
}
