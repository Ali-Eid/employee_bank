import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/address/domain/models/input_models/set_address_model.dart';
import 'package:fs_bank/features/address/domain/usecases/address_usecases.dart';

import '../../../domain/models/address_model/address_model.dart';

part 'set_address_event.dart';
part 'set_address_state.dart';
part 'set_address_bloc.freezed.dart';

class SetAddressBloc extends Bloc<SetAddressEvent, SetAddressState> {
  final SetAddressUsecase setAddressUsecase;
  SetAddressBloc({required this.setAddressUsecase}) : super(const _Initial()) {
    on<SetAddressEvent>((event, emit) async {
      await event.map(
        setAddress: (value) async {
          emit(const SetAddressState.loading());
          final failureOrSuccess = await setAddressUsecase
              .execute((customerId: value.cusotmerId, model: value.model));
          failureOrSuccess.when(
            (success) {
              emit(SetAddressState.success(address: success));
            },
            (error) {
              emit(SetAddressState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
