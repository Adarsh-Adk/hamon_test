import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_registration_params.freezed.dart';

@freezed
class DeleteRegistrationParams with _$DeleteRegistrationParams {
  const factory DeleteRegistrationParams({
    final int? id,
  }) = _DeleteRegistrationParams;
}
