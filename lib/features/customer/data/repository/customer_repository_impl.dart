import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/features/customer/domain/models/customer_model/customer_model.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import 'package:fs_bank/features/customer/domain/repository/customer_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/network/network_info.dart';
import '../datasource/customer_api.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  final CustomerServiceClient customerServiceClient;
  final NetworkInfo networkInfo;

  CustomerRepositoryImpl(
      {required this.customerServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<CustomerModel>, FailureModel>> createCustomer(
      {required InputCreateCustomerModel cusotmer}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await customerServiceClient.createCustomer(input: cusotmer);
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
