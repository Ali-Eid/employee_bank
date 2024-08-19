import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  factory AddressModel({
    @Default(0) int id,
    @Default(0) @JsonKey(name: "country_id") int countryId,
    @Default(0) @JsonKey(name: "state_id") int stateId,
    @Default("") String area,
    @Default("") String street,
    @Default("") String details,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default("") @JsonKey(name: "address_type") String addressType,
    @Default(false) @JsonKey(name: "is_default") bool isDefault,
    @Default(0) @JsonKey(name: "customer_id") int customerId,
  }) = _AddressModel;
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
