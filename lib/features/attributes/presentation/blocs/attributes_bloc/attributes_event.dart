part of 'attributes_bloc.dart';

@freezed
class AttributesEvent with _$AttributesEvent {
  const factory AttributesEvent.getAttributesByTemplateId(
      {required int templateId, String? type}) = _GetAttributeByTemplateId;
}
