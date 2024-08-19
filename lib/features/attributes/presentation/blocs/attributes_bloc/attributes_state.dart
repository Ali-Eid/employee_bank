part of 'attributes_bloc.dart';

@freezed
class AttributesState with _$AttributesState {
  const factory AttributesState.initial() = _Initial;
  const factory AttributesState.loading() = _Loading;
  const factory AttributesState.loaded(
      {required ResponseModel<AttributesModel> attributes}) = _Loaded;
  const factory AttributesState.error({required String message}) = _Error;
}
