// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Students _$$_StudentsFromJson(Map<String, dynamic> json) => _$_Students(
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StudentsToJson(_$_Students instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
