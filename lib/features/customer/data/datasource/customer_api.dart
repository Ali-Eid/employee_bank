import 'package:dio/dio.dart';
import 'package:fs_bank/features/customer/domain/models/customer_model/customer_model.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/models/input_create_customer_model/input_create_customer_model.dart';
part 'customer_api.g.dart';

@RestApi(baseUrl: Endpoints.CUSTOMER_SERVICES_API)
abstract class CustomerServiceClient {
  factory CustomerServiceClient(Dio dio, {String baseUrl}) =
      _CustomerServiceClient;

  @POST(Endpoints.CREATE_CUSTOMER)
  Future<HttpResponse<ResponseModel<CustomerModel>>> createCustomer(
      {@Body() required InputCreateCustomerModel input});
}
