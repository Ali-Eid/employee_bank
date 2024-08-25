import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import 'package:fs_bank/features/attributes/domain/usecases/attributes_usecases.dart';

import '../../../domain/models/attributes_model/attributes_model.dart';

part 'all_attributes_event.dart';
part 'all_attributes_state.dart';
part 'all_attributes_bloc.freezed.dart';

class AllAttributesBloc extends Bloc<AllAttributesEvent, AllAttributesState> {
  final GetAllAttributesUsecase getAllAttributesUsecase;
  final AppPreferences appPreferences;
  List<AttributesModel> allAttributes = [];
  AllAttributesBloc(
      {required this.getAllAttributesUsecase, required this.appPreferences})
      : super(const _Initial()) {
    on<AllAttributesEvent>((event, emit) async {
      await event.map(
        getAllAttributes: (value) async {
          allAttributes.clear();
          allAttributes.addAll(await appPreferences.getAllAttributes());
          emit(const AllAttributesState.loading());
          final failureOrSuccess =
              await getAllAttributesUsecase.execute((type: value.type));
          await failureOrSuccess.when(
            (success) async {
              await appPreferences.setAllAttributes(attributes: success.data);
              allAttributes.clear();
              allAttributes.addAll(success.data);

              emit(AllAttributesState.loaded(attributes: success));
            },
            (error) {
              emit(AllAttributesState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
