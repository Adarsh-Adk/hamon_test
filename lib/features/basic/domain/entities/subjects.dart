import 'package:freezed_annotation/freezed_annotation.dart';

import 'subject.dart';

part 'subjects.freezed.dart';
part 'subjects.g.dart';

@freezed
class Subjects with _$Subjects {
  const factory Subjects({
    final List<Subject>? subjects,
  }) = _Subjects;

  factory Subjects.fromJson(Map<String, dynamic> json) =>
      _$SubjectsFromJson(json);
}
