import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/address/domain/usecases/address_usecases.dart';
import 'package:fs_bank/features/home/domain/usecases/home_usecases.dart';
import 'package:fs_bank/main.dart';

part 'static_event.dart';
part 'static_state.dart';
part 'static_bloc.freezed.dart';

class StaticBloc extends Bloc<StaticEvent, StaticState> {
  final GetTemplatesUsecase getTemplatesUsecase;
  final GetCountriesUsecase getCountriesUsecase;
  final GetStatesUsecase getStatesUsecase;
  final AppPreferences appPreferences;
  List<StaticModel> templates = [];
  List<CountryModel> countries = [];
  List<CountryModel> states = [];
  StaticBloc(
      {required this.getTemplatesUsecase,
      required this.appPreferences,
      required this.getCountriesUsecase,
      required this.getStatesUsecase})
      : super(const _Initial()) {
    on<StaticEvent>((event, emit) async {
      await event.map(
        getTemplates: (value) async {
          templates.clear();
          templates.addAll(await appPreferences.getTemplates());
          emit(const StaticState.loading());
          final failureOrSuccess = await getTemplatesUsecase.execute();
          await failureOrSuccess.when(
            (success) async {
              templates.clear();
              templates.addAll(success.data);
              await appPreferences.setTemplates(templates: success.data);

              emit(StaticState.loaded(templates: success));
            },
            (error) {
              emit(StaticState.error(message: error.message));
            },
          );
        },
        getCountries: (value) async {
          countries.clear();
          countries.addAll(await appPreferences.getCountires());
          emit(const StaticState.loading());
          if (countries.isEmpty) {
            final failureOrCountries = await getCountriesUsecase.execute();
            await failureOrCountries.when(
              (success) async {
                countries.clear();
                countries.addAll(success.data);
                await appPreferences.setCountries(countries: success.data);
                await objectBox.addCountries(success.data);

                emit(StaticState.loaded(countries: success));
              },
              (error) {
                emit(StaticState.error(message: error.message));
              },
            );
          }
        },
        getStates: (value) async {
          states.clear();
          states.addAll(await appPreferences.getStates());
          emit(const StaticState.loading());
          if (states.isEmpty) {
            final failureOrStates = await getStatesUsecase.execute();
            await failureOrStates.when(
              (success) async {
                states.clear();
                states.addAll(success.data);
                await appPreferences.setStates(states: success.data);
                await objectBox.addStates(success.data);
                emit(StaticState.loaded(states: success));
              },
              (error) {
                emit(StaticState.error(message: error.message));
              },
            );
          }
        },
      );
    }, transformer: concurrent());
  }
}
