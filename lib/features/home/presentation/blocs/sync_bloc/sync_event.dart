part of 'sync_bloc.dart';

@freezed
class SyncEvent with _$SyncEvent {
  const factory SyncEvent.createCustomer({required CreateCustomerModel input}) =
      _CreateBasicCustomer;
}
