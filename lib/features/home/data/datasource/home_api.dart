import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';

part 'home_api.g.dart';

@RestApi(baseUrl: Endpoints.ATTRIBUTES_API)
abstract class HomeServiceClient {
  factory HomeServiceClient(Dio dio, {String baseUrl}) = _HomeServiceClient;

  @GET(Endpoints.TEMPLATES)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getTemplates();
}
