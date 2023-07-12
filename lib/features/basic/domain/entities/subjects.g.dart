// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subjects _$$_SubjectsFromJson(Map<String, dynamic> json) => _$_Subjects(
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubjectsToJson(_$_Subjects instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
    };
