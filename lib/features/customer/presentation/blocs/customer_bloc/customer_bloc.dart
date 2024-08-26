import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import 'package:fs_bank/features/customer/domain/usecases/customer_usecases.dart';

import '../../../domain/models/customer_model/customer_model.dart';
import '../../../domain/models/input_create_customer_model/create_customer_model/create_customer_model.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CreateCustomerUsecase createCustomerUsecase;
  CustomerBloc({required this.createCustomerUsecase})
      : super(const _Initial()) {
    on<CustomerEvent>((event, emit) async {
      await event.map(
        createCustomer: (value) async {
          emit(const CustomerState.loading());
          final failureOrSuccess =
              await createCustomerUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(CustomerState.success(customer: success));
            },
            (error) {
              emit(CustomerState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
