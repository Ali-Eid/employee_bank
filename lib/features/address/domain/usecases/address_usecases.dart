import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/address/domain/models/address_model/address_model.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import 'package:multiple_result/src/result.dart';

import '../repository/address_repository.dart';

class GetCountriesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<CountryModel>>> {
  final AddressRepository repository;

  GetCountriesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>>
      execute() async {
    return await repository.getCountries();
  }
}

class GetStatesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<CountryModel>>> {
  final AddressRepository repository;

  GetStatesUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>>
      execute() async {
    return await repository.getStates();
  }
}

class SetAddressUsecase
    implements
        BaseUseCase<({int customerId, SetAddressModel model}),
            ResponseModel<AddressModel>> {
  final AddressRepository repository;

  SetAddressUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<AddressModel>, FailureModel>> execute(
      ({int customerId, SetAddressModel model}) input) async {
    return await repository.setAddress(
        customerId: input.customerId, input: input.model);
  }
}
