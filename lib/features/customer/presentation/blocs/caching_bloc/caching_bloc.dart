import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';

import '../../../../attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import '../../../domain/models/input_create_customer_model/input_create_customer_model.dart';

part 'caching_event.dart';
part 'caching_state.dart';
part 'caching_bloc.freezed.dart';

class CachingBloc extends Bloc<CachingEvent, CachingState> {
  final AppPreferences appPreferences;
  List<InputCreateCustomerModel> cached = [];
  List<InputCreateCustomerModel> cachedShow = [];
  List<InputCreateCustomerModel> syncShow = [];
  List<InputCreateCustomerModel> errorShow = [];
  int filterType = 0;
  CachingBloc({required this.appPreferences}) : super(const _Initial()) {
    on<CachingEvent>((event, emit) async {
      await event.map(
        cachingCustomerBasicInfo: (value) async {
          cached.clear();
          emit(const CachingState.loading());
          await appPreferences.setCustomerInput(customer: value.customer);
          cached.addAll(await appPreferences.getCustomersInput());
          emit(const CachingState.setSuccess(
              message: "Saved customer info successfully"));
          emit(CachingState.success(customersInput: cached));
        },
        getCustomersCaching: (value) async {
          cached.clear();
          emit(const CachingState.loading());
          cached.addAll(await appPreferences.getCustomersInput());
          emit(CachingState.success(customersInput: cached));
        },
        deleteCustomerCache: (value) async {
          emit(const CachingState.loading());
          cached.removeWhere((element) => element.createdAt == value.createAt);
          await appPreferences.clearCustomerInput(createdAt: value.createAt);
          emit(CachingState.success(customersInput: cached));
        },
        filter: (_ReplaceCustomerInfoCache value) async {
          filterType = value.filterType;
          errorShow.addAll(cached
              .where(
                (element) =>
                    element.hasError ||
                    element.hasErrorSetAddress ||
                    element.hasErrorSetAttributes ||
                    element.attachments.any(
                      (element) => element.hasError,
                    ),
              )
              .toList());

          syncShow.addAll(cached
              .where(
                (element) =>
                    element.hasSuccess &&
                    element.hasSuccessSetAddress &&
                    element.hasSuccessSetAttributes &&
                    element.attachments.every(
                      (element) => element.isUploaded,
                    ),
              )
              .toList());
          cachedShow.addAll(cached
              .where((element) =>
                  !syncShow.contains(element) && !errorShow.contains(element))
              .toList());
          emit(const CachingState.loading());
          switch (value.filterType) {
            case 0:
              cached.clear();
              cached.addAll(await appPreferences.getCustomersInput());
              cachedShow.clear();
              cachedShow.addAll(cached
                  .where((element) =>
                      !syncShow.contains(element) &&
                      !errorShow.contains(element))
                  .toList());
              emit(CachingState.successFilter(customersInput: cachedShow));
            case 1:
              cached.clear();
              cached.addAll(await appPreferences.getCustomersInput());
              syncShow.clear();
              syncShow.addAll(cached
                  .where(
                    (element) =>
                        element.hasSuccess &&
                        element.hasSuccessSetAddress &&
                        element.hasSuccessSetAttributes &&
                        element.attachments.any(
                          (element) => element.isUploaded,
                        ),
                  )
                  .toList());
              emit(CachingState.successFilter(customersInput: syncShow));

            case 2:
              cached.clear();
              cached.addAll(await appPreferences.getCustomersInput());
              errorShow.clear();
              errorShow.addAll(cached
                  .where(
                    (element) =>
                        element.hasError ||
                        element.hasErrorSetAddress ||
                        element.hasErrorSetAttributes ||
                        element.attachments.any(
                          (element) => element.hasError,
                        ),
                  )
                  .toList());
              emit(CachingState.successFilter(customersInput: errorShow));
            default:
          }
        },
      );
    }, transformer: droppable());
  }
  Future<void> replaceCustomerInfo(
      {required InputCreateCustomerModel customer}) async {
    int index =
        cached.indexWhere((element) => element.createdAt == customer.createdAt);
    // cached.removeWhere(
    //     (element) => element.createdAt == value.customer.createdAt);
    cached[index] = customer;
    await appPreferences.updateCustomerInput(customer: customer);
  }
}
