part of 'set_address_bloc.dart';

@freezed
class SetAddressEvent with _$SetAddressEvent {
  const factory SetAddressEvent.setAddress(
      {required int cusotmerId, required SetAddressModel model}) = _SetAddress;
}
