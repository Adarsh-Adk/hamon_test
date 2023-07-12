// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Registrations _$$_RegistrationsFromJson(Map<String, dynamic> json) =>
    _$_Registrations(
      registrations: (json['registrations'] as List<dynamic>?)
          ?.map((e) => Registration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RegistrationsToJson(_$_Registrations instance) =>
    <String, dynamic>{
      'registrations': instance.registrations,
    };
