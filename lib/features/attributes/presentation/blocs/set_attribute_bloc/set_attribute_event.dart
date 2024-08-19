part of 'set_attribute_bloc.dart';

@freezed
class SetAttributeEvent with _$SetAttributeEvent {
  const factory SetAttributeEvent.setAttribute({
    required SetAttributeModel setAttributeModel,
  }) = _SetAttribute;
}
