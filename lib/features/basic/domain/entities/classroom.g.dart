// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassRoom _$$_ClassRoomFromJson(Map<String, dynamic> json) => _$_ClassRoom(
      id: json['id'] as int?,
      size: json['size'] as int?,
      subject: json['subject'],
      subjectId: json['subjectId'] as int?,
      layout: json['layout'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ClassRoomToJson(_$_ClassRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'subject': instance.subject,
      'subjectId': instance.subjectId,
      'layout': instance.layout,
      'name': instance.name,
    };
