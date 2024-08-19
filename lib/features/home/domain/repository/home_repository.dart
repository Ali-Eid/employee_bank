import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../attributes/domain/models/attributes_model/attributes_model.dart';

abstract class HomeRepository {
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> getTemplates();
}
