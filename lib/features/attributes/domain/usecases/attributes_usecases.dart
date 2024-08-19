import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attachments_model/set_attachments_model.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import 'package:fs_bank/features/attributes/domain/repository/attributes_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/attributes_model/attributes_model.dart';

class GetAllAttributesUsecase
    implements
        BaseUseCase<({String? type}), ResponseModel<List<AttributesModel>>> {
  final AttributeRepository repository;

  GetAllAttributesUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<AttributesModel>>, FailureModel>> execute(
      ({String? type}) input) async {
    return await repository.getAllAttributes(type: input.type);
  }
}

class GetAttributesByTemplateIdUsecase
    implements
        BaseUseCase<({int templateId, String? type}),
            ResponseModel<AttributesModel>> {
  final AttributeRepository repository;

  GetAttributesByTemplateIdUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<AttributesModel>, FailureModel>> execute(
      ({int templateId, String? type}) input) async {
    return await repository.getAttributeByTemplate(
        templateId: input.templateId, type: input.type);
  }
}

class SetAttributeCustomerUsecase
    implements BaseUseCase<SetAttributeModel, ResponseModel> {
  final AttributeRepository repository;

  SetAttributeCustomerUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      SetAttributeModel input) async {
    return await repository.setAttributes(attributes: input);
  }
}

class SetAttachmentCustomerUsecase
    implements
        BaseUseCase<({int customerId, SetAttachmentModel model}),
            ResponseModel> {
  final AttributeRepository repository;

  SetAttachmentCustomerUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      ({int customerId, SetAttachmentModel model}) input) async {
    return await repository.setAttachments(
        customerId: input.customerId, attachment: input.model);
  }
}
