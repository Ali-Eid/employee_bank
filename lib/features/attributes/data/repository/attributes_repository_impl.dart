import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';

import 'package:fs_bank/core/bases/models/response_model/response_model.dart';

import 'package:fs_bank/features/attributes/domain/models/attributes_model/attributes_model.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attachments_model/set_attachments_model.dart';

import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';

import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/repository/attributes_repository.dart';
import '../datasource/attributes_api.dart';

class AttributesRepositoryImpl implements AttributeRepository {
  final AttributesServiceClient attributesServiceClient;
  final NetworkInfo networkInfo;

  AttributesRepositoryImpl(
      {required this.attributesServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponseModel<AttributesModel>, FailureModel>>
      getAttributeByTemplate({required int templateId, String? type}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await attributesServiceClient
            .getAttributesByTemplateId(templateId: templateId, type: type);
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

  @override
  Future<Result<ResponseModel, FailureModel>> setAttributes(
      {required SetAttributeModel attributes}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await attributesServiceClient.setCustomerAttribute(
            input: attributes);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
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

  @override
  Future<Result<ResponseModel<List<AttributesModel>>, FailureModel>>
      getAllAttributes({String? type}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await attributesServiceClient.getAllAttributes(type: type);
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

  @override
  Future<Result<ResponseModel, FailureModel>> setAttachments(
      {required int customerId, required SetAttachmentModel attachment}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await attributesServiceClient.setCustomerAttachment(
            // file: await convertBase64ToFile(attachment.file, attachment.name),
            file: File(attachment.file),
            customerId: customerId,
            attributeId: attachment.attributeId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
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
