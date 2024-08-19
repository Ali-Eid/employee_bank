part of 'set_attachment_bloc.dart';

@freezed
class SetAttachmentState with _$SetAttachmentState {
  const factory SetAttachmentState.initial() = _Initial;
  const factory SetAttachmentState.loading() = _Loading;
  const factory SetAttachmentState.success({required ResponseModel success}) =
      _Success;
  const factory SetAttachmentState.error({required String message}) = _Error;
}
