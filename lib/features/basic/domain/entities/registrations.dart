import 'package:freezed_annotation/freezed_annotation.dart';

import 'registration.dart';

part 'registrations.freezed.dart';
part 'registrations.g.dart';

@freezed
class Registrations with _$Registrations {
  const factory Registrations({
    final List<Registration>? registrations,
  }) = _Registrations;

  factory Registrations.fromJson(Map<String, dynamic> json) =>
      _$RegistrationsFromJson(json);
}
