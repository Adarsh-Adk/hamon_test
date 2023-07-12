// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Students _$StudentsFromJson(Map<String, dynamic> json) {
  return _Students.fromJson(json);
}

/// @nodoc
mixin _$Students {
  List<Student>? get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentsCopyWith<Students> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsCopyWith<$Res> {
  factory $StudentsCopyWith(Students value, $Res Function(Students) then) =
      _$StudentsCopyWithImpl<$Res, Students>;
  @useResult
  $Res call({List<Student>? students});
}

/// @nodoc
class _$StudentsCopyWithImpl<$Res, $Val extends Students>
    implements $StudentsCopyWith<$Res> {
  _$StudentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentsCopyWith<$Res> implements $StudentsCopyWith<$Res> {
  factory _$$_StudentsCopyWith(
          _$_Students value, $Res Function(_$_Students) then) =
      __$$_StudentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student>? students});
}

/// @nodoc
class __$$_StudentsCopyWithImpl<$Res>
    extends _$StudentsCopyWithImpl<$Res, _$_Students>
    implements _$$_StudentsCopyWith<$Res> {
  __$$_StudentsCopyWithImpl(
      _$_Students _value, $Res Function(_$_Students) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_$_Students(
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Students implements _Students {
  const _$_Students({final List<Student>? students}) : _students = students;

  factory _$_Students.fromJson(Map<String, dynamic> json) =>
      _$$_StudentsFromJson(json);

  final List<Student>? _students;
  @override
  List<Student>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Students(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Students &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentsCopyWith<_$_Students> get copyWith =>
      __$$_StudentsCopyWithImpl<_$_Students>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentsToJson(
      this,
    );
  }
}

abstract class _Students implements Students {
  const factory _Students({final List<Student>? students}) = _$_Students;

  factory _Students.fromJson(Map<String, dynamic> json) = _$_Students.fromJson;

  @override
  List<Student>? get students;
  @override
  @JsonKey(ignore: true)
  _$$_StudentsCopyWith<_$_Students> get copyWith =>
      throw _privateConstructorUsedError;
}
