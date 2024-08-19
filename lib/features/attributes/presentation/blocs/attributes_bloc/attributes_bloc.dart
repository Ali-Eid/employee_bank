import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/attributes/domain/usecases/attributes_usecases.dart';

import '../../../domain/models/attributes_model/attributes_model.dart';

part 'attributes_event.dart';
part 'attributes_state.dart';
part 'attributes_bloc.freezed.dart';

class AttributesBloc extends Bloc<AttributesEvent, AttributesState> {
  final GetAttributesByTemplateIdUsecase getAttributesByTemplateIdUsecase;
  AttributesBloc({required this.getAttributesByTemplateIdUsecase})
      : super(const _Initial()) {
    on<AttributesEvent>((event, emit) async {
      await event.map(
        getAttributesByTemplateId: (value) async {
          emit(const AttributesState.loading());
          final failureOrSuccess = await getAttributesByTemplateIdUsecase
              .execute((templateId: value.templateId, type: value.type));
          failureOrSuccess.when(
            (success) {
              emit(AttributesState.loaded(attributes: success));
            },
            (error) {
              emit(AttributesState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
