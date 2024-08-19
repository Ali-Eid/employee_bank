part of 'all_attributes_bloc.dart';

@freezed
class AllAttributesState with _$AllAttributesState {
  const factory AllAttributesState.initial() = _Initial;
  const factory AllAttributesState.loading() = _Loading;
  const factory AllAttributesState.loaded(
      {required ResponseModel<List<AttributesModel>> attributes}) = _Loaded;
  const factory AllAttributesState.error({required String message}) = _Error;
}
