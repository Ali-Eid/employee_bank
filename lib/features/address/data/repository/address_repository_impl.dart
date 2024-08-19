import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';

import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/address/domain/models/address_model/address_model.dart';

import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';

import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/repository/address_repository.dart';
import '../datasource/address_api.dart';

class AddressRepositoryImpl implements AddressRepository {
  final AddressServiceClient addressServiceClient;
  final NetworkInfo networkInfo;

  AddressRepositoryImpl(
      {required this.addressServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>>
      getCountries() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await addressServiceClient.getCountries();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>>
      getStates() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await addressServiceClient.getStates();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<AddressModel>, FailureModel>> setAddress(
      {required int customerId, required SetAddressModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await addressServiceClient.setAddress(
            customerId: customerId,
            countryId: input.countryId,
            stateId: input.stateId,
            area: input.area,
            street: input.street,
            details: input.details,
            phoneNumber: input.phoneNumber,
            addressType: input.addressType,
            isDefault: input.isDefault);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }
}
