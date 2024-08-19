part of 'set_address_bloc.dart';

@freezed
class SetAddressState with _$SetAddressState {
  const factory SetAddressState.initial() = _Initial;
  const factory SetAddressState.loading() = _Loading;
  const factory SetAddressState.success(
      {required ResponseModel<AddressModel> address}) = _Success;
  const factory SetAddressState.error({required String message}) = _Error;
}
