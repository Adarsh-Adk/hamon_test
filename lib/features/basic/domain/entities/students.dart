import 'package:freezed_annotation/freezed_annotation.dart';

import 'student.dart';

part 'students.freezed.dart';
part 'students.g.dart';

@freezed
class Students with _$Students {
  const factory Students({
    final List<Student>? students,
  }) = _Students;

  factory Students.fromJson(Map<String, dynamic> json) =>
      _$StudentsFromJson(json);
}
