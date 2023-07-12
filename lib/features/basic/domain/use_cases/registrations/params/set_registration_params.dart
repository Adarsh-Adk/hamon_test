import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_registration_params.freezed.dart';

@freezed
class SetRegistrationParams with _$SetRegistrationParams {
  const factory SetRegistrationParams({
    final int? subjectId,
    final int? studentId,
  }) = _SetRegistrationParams;
}
