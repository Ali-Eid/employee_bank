part of 'static_bloc.dart';

@freezed
class StaticEvent with _$StaticEvent {
  const factory StaticEvent.getTemplates() = _GetTemplates;
  const factory StaticEvent.getCountries() = _GetCountries;
  const factory StaticEvent.getStates() = _GetStates;
}
