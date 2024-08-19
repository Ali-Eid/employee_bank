import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/attributes/domain/usecases/attributes_usecases.dart';

import '../../../domain/models/set_attributes_model/set_attribute_model.dart';

part 'set_attribute_event.dart';
part 'set_attribute_state.dart';
part 'set_attribute_bloc.freezed.dart';

class SetAttributeBloc extends Bloc<SetAttributeEvent, SetAttributeState> {
  final SetAttributeCustomerUsecase setAttributeCustomerUsecase;
  SetAttributeBloc({required this.setAttributeCustomerUsecase})
      : super(const _Initial()) {
    on<SetAttributeEvent>((event, emit) async {
      await event.map(
        setAttribute: (value) async {
          emit(const SetAttributeState.loading());
          final failureOrSuccess = await setAttributeCustomerUsecase
              .execute(value.setAttributeModel);
          failureOrSuccess.when(
            (success) {
              emit(SetAttributeState.success(success: success));
            },
            (error) {
              emit(SetAttributeState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
