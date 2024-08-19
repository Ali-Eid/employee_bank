import 'package:bloc/bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';

import '../../../domain/models/set_attachments_model/set_attachments_model.dart';
import '../../../domain/usecases/attributes_usecases.dart';

part 'set_attachment_event.dart';
part 'set_attachment_state.dart';
part 'set_attachment_bloc.freezed.dart';

class SetAttachmentBloc extends Bloc<SetAttachmentEvent, SetAttachmentState> {
  final SetAttachmentCustomerUsecase setAttachmentCustomerUsecase;
  SetAttachmentBloc({required this.setAttachmentCustomerUsecase})
      : super(const _Initial()) {
    on<SetAttachmentEvent>((event, emit) async {
      await event.map(
        setAttachment: (value) async {
          emit(const SetAttachmentState.loading());
          final failureOrSuccess = await setAttachmentCustomerUsecase
              .execute((customerId: value.customerId, model: value.model));
          failureOrSuccess.when(
            (success) {
              emit(SetAttachmentState.success(success: success));
            },
            (error) {
              emit(SetAttachmentState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
