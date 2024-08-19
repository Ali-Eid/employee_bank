import 'package:fs_bank/features/address/domain/models/address_model/address_model.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/presentation/views/address_view.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/bases/models/static_model/static_model.dart';
import '../models/input_models/set_address_model.dart';

abstract class AddressRepository {
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>>
      getCountries();
  Future<Result<ResponseModel<List<CountryModel>>, FailureModel>> getStates();
  Future<Result<ResponseModel<AddressModel>, FailureModel>> setAddress(
      {required int customerId, required SetAddressModel input});
}
