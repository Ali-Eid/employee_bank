part of 'sync_bloc.dart';

@freezed
class SyncState with _$SyncState {
  const factory SyncState.initial() = _Initial;
  const factory SyncState.loading() = _Loading;
  const factory SyncState.loaded(
      {required ResponseModel<CustomerModel> customer}) = _Loaded;
  const factory SyncState.error({required String message}) = _Error;
}
