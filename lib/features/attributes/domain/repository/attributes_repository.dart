import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/attributes_model/attributes_model.dart';
import '../models/set_attachments_model/set_attachments_model.dart';
import '../models/set_attributes_model/set_attribute_model.dart';

abstract class AttributeRepository {
  Future<Result<ResponseModel<List<AttributesModel>>, FailureModel>>
      getAllAttributes({String? type});
  Future<Result<ResponseModel<AttributesModel>, FailureModel>>
      getAttributeByTemplate({required int templateId, String? type});
  Future<Result<ResponseModel, FailureModel>> setAttributes(
      {required SetAttributeModel attributes});
  Future<Result<ResponseModel, FailureModel>> setAttachments(
      {required int customerId, required SetAttachmentModel attachment});
}
