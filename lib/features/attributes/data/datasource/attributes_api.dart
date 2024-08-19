import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../../customer/domain/models/customer_model/customer_model.dart';
import '../../domain/models/attributes_model/attributes_model.dart';
import '../../domain/models/set_attachments_model/set_attachments_model.dart';

part 'attributes_api.g.dart';

@RestApi(baseUrl: Endpoints.ATTRIBUTES_API)
abstract class AttributesServiceClient {
  factory AttributesServiceClient(Dio dio, {String baseUrl}) =
      _AttributesServiceClient;

  @GET(Endpoints.ATTRIBUTES_BY_TEMPLATE_ID)
  Future<HttpResponse<ResponseModel<AttributesModel>>>
      getAttributesByTemplateId(
          {@Path("template_id") required int templateId,
          @Query("type") String? type});
  @GET(Endpoints.ALL_ATTRIBUTES)
  Future<HttpResponse<ResponseModel<List<AttributesModel>>>> getAllAttributes(
      {@Query("type") String? type});
  @POST(Endpoints.SET_CUSTOMER_ATTRIBUTES)
  Future<HttpResponse<ResponseModel>> setCustomerAttribute(
      {@Body() required SetAttributeModel input});

  @POST(Endpoints.SET_CUSTOMER_ATTACHMENT)
  Future<HttpResponse<ResponseModel>> setCustomerAttachment({
    @Part(name: "file") required File file,
    @Part(name: 'customer_id') required int customerId,
    @Part(name: 'attribute_id') required int attributeId,
  });
}
