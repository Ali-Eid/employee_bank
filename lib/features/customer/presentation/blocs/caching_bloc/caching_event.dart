part of 'caching_bloc.dart';

@freezed
class CachingEvent with _$CachingEvent {
  const factory CachingEvent.cachingCustomerBasicInfo(
      {required InputCreateCustomerModel customer}) = _CustomerBasicInfo;
  const factory CachingEvent.getCustomersCaching() = _GetCustomerBasicInfo;
  const factory CachingEvent.deleteCustomerCache({required String createAt}) =
      _DeleteCustomerCache;
  // const factory CachingEvent.replaceCustomerInfoCache(
  //     {required InputCreateCustomerModel customer}) = _ReplaceCustomerInfoCache;
  const factory CachingEvent.filter({required int filterType}) =
      _ReplaceCustomerInfoCache;
}
