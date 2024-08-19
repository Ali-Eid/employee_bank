part of 'all_attributes_bloc.dart';

@freezed
class AllAttributesEvent with _$AllAttributesEvent {
  const factory AllAttributesEvent.getAllAttributes({String? type}) =
      _GetAllAttributes;
}
