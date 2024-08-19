import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/home/domain/repository/home_repository.dart';
import 'package:multiple_result/src/result.dart';

class GetTemplatesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final HomeRepository repository;

  GetTemplatesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getTemplates();
  }
}
