part of 'sync_bloc.dart';

@freezed
class SyncEvent with _$SyncEvent {
  const factory SyncEvent.createCustomer(
      {required InputCreateCustomerModel input}) = _Started;
}
