import 'package:dio/dio.dart';
import 'package:fs_bank/features/address/domain/models/address_model/address_model.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/bases/models/static_model/static_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../domain/models/input_models/set_address_model.dart';

part 'address_api.g.dart';

@RestApi(baseUrl: Endpoints.ADDRESS)
abstract class AddressServiceClient {
  factory AddressServiceClient(Dio dio, {String baseUrl}) =
      _AddressServiceClient;

  @GET(Endpoints.COUNTIRES)
  Future<HttpResponse<ResponseModel<List<CountryModel>>>> getCountries();

  @GET(Endpoints.STATES)
  Future<HttpResponse<ResponseModel<List<CountryModel>>>> getStates();

  @POST(Endpoints.SET_ADDRESS)
  Future<HttpResponse<ResponseModel<AddressModel>>> setAddress({
    @Field("customer_id") required int customerId,
    @Field("country_id") required int countryId,
    @Field("state_id") required int stateId,
    @Field("area") required String area,
    @Field("street") required String street,
    @Field("details") required String details,
    @Field("phone_number") required String phoneNumber,
    @Field("address_type") required String addressType,
    @Field("is_default") required bool isDefault,
  });
}
