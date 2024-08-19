import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/home/data/datasource/home_api.dart';
import 'package:fs_bank/features/home/domain/repository/home_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeServiceClient homeServiceClient;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl(
      {required this.homeServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getTemplates() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await homeServiceClient.getTemplates();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }
}
