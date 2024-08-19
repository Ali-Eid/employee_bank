part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = _Initial;
  const factory CustomerState.loading() = _Loading;
  const factory CustomerState.success(
      {required ResponseModel<CustomerModel> customer}) = _Success;
  const factory CustomerState.error({required String message}) = _Error;
}
