import 'package:fs_bank/features/customer/domain/models/customer_model/customer_model.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/input_create_customer_model/create_customer_model/create_customer_model.dart';
import '../models/input_create_customer_model/input_create_customer_model.dart';

abstract class CustomerRepository {
  Future<Result<ResponseModel<CustomerModel>, FailureModel>> createCustomer(
      {required CreateCustomerModel cusotmer});
}
