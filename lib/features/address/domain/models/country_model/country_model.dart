import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
abstract class CountryModel with _$CountryModel {
  factory CountryModel(
      {@Default(0) int id,
      @Default("") String code,
      @Default(CountryNameModel()) CountryNameModel name,
      @Default(0) @JsonKey(name: "country_id") int countryId}) = _CountryModel;
  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
abstract class CountryNameModel with _$CountryNameModel {
  const factory CountryNameModel({
    @Default("") String en,
    @Default("") String ar,
  }) = _CountryNameModel;
  factory CountryNameModel.fromJson(Map<String, dynamic> json) =>
      _$CountryNameModelFromJson(json);
}
