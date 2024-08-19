part of 'static_bloc.dart';

@freezed
class StaticState with _$StaticState {
  const factory StaticState.initial() = _Initial;
  const factory StaticState.loading() = _Loading;
  const factory StaticState.loaded({
    @Default(ResponseModel(data: []))
    ResponseModel<List<StaticModel>> templates,
    @Default(ResponseModel(data: []))
    ResponseModel<List<CountryModel>> countries,
    @Default(ResponseModel(data: [])) ResponseModel<List<CountryModel>> states,
  }) = _Loaded;
  const factory StaticState.error({required String message}) = _Error;
}
