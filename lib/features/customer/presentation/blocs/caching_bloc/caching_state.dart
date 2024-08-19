part of 'caching_bloc.dart';

@freezed
class CachingState with _$CachingState {
  const factory CachingState.initial() = _Initial;
  const factory CachingState.loading() = _Loading;
  const factory CachingState.setSuccess({required String message}) =
      _SetSuccess;
  const factory CachingState.replacedSuccess() = _ReplacedSuccess;
  const factory CachingState.success(
      {required List<InputCreateCustomerModel> customersInput}) = _Success;
  const factory CachingState.successFilter(
          {required List<InputCreateCustomerModel> customersInput}) =
      _SuccessFilter;
  const factory CachingState.error({required String message}) = _Error;
}
