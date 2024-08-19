import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_address_model.freezed.dart';
part 'set_address_model.g.dart';

@freezed
abstract class SetAddressModel with _$SetAddressModel {
  const factory SetAddressModel({
    @Default(0) @JsonKey(name: "country_id") int countryId,
    @Default(0) @JsonKey(name: "state_id") int stateId,
    @Default("") String area,
    @Default("") String street,
    @Default("") String details,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default("") @JsonKey(name: "address_type") String addressType,
    @Default(false) @JsonKey(name: "is_default") bool isDefault,
  }) = _SetAddressModel;
  factory SetAddressModel.fromJson(Map<String, dynamic> json) =>
      _$SetAddressModelFromJson(json);
}
