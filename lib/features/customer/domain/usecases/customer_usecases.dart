import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/customer/domain/models/customer_model/customer_model.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import 'package:fs_bank/features/customer/domain/repository/customer_repository.dart';
import 'package:multiple_result/src/result.dart';

class CreateCustomerUsecase
    implements
        BaseUseCase<InputCreateCustomerModel, ResponseModel<CustomerModel>> {
  final CustomerRepository repository;

  CreateCustomerUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<CustomerModel>, FailureModel>> execute(
      InputCreateCustomerModel input) async {
    return await repository.createCustomer(cusotmer: input);
  }
}
