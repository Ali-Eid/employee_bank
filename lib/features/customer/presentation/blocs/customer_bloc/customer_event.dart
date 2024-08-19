part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.createCustomer(
      {required InputCreateCustomerModel input}) = _CreateCustomer;
}
