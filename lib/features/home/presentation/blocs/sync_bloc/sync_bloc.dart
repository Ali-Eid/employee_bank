import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';

import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../customer/domain/models/customer_model/customer_model.dart';
import '../../../../customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import '../../../../customer/domain/usecases/customer_usecases.dart';

part 'sync_event.dart';
part 'sync_state.dart';
part 'sync_bloc.freezed.dart';

class SyncBloc extends Bloc<SyncEvent, SyncState> {
  final CreateCustomerUsecase createCustomerUsecase;
  final AppPreferences appPreferences;
  SyncBloc({required this.createCustomerUsecase, required this.appPreferences})
      : super(const _Initial()) {
    on<SyncEvent>((event, emit) async {
      await event.map(
        createCustomer: (value) async {
          emit(const SyncState.loading());
          final failureOrSuccess =
              await createCustomerUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(SyncState.loaded(customer: success));
            },
            (error) {
              emit(SyncState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
