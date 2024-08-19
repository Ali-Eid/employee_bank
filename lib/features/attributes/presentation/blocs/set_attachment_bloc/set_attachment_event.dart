part of 'set_attachment_bloc.dart';

@freezed
class SetAttachmentEvent with _$SetAttachmentEvent {
  const factory SetAttachmentEvent.setAttachment(
      {required int customerId, required SetAttachmentModel model}) = _Started;
}
