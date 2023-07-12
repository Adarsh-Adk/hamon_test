// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subjects _$SubjectsFromJson(Map<String, dynamic> json) {
  return _Subjects.fromJson(json);
}

/// @nodoc
mixin _$Subjects {
  List<Subject>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsCopyWith<Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsCopyWith<$Res> {
  factory $SubjectsCopyWith(Subjects value, $Res Function(Subjects) then) =
      _$SubjectsCopyWithImpl<$Res, Subjects>;
  @useResult
  $Res call({List<Subject>? subjects});
}

/// @nodoc
class _$SubjectsCopyWithImpl<$Res, $Val extends Subjects>
    implements $SubjectsCopyWith<$Res> {
  _$SubjectsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectsCopyWith<$Res> implements $SubjectsCopyWith<$Res> {
  factory _$$_SubjectsCopyWith(
          _$_Subjects value, $Res Function(_$_Subjects) then) =
      __$$_SubjectsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Subject>? subjects});
}

/// @nodoc
class __$$_SubjectsCopyWithImpl<$Res>
    extends _$SubjectsCopyWithImpl<$Res, _$_Subjects>
    implements _$$_SubjectsCopyWith<$Res> {
  __$$_SubjectsCopyWithImpl(
      _$_Subjects _value, $Res Function(_$_Subjects) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_$_Subjects(
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subjects implements _Subjects {
  const _$_Subjects({final List<Subject>? subjects}) : _subjects = subjects;

  factory _$_Subjects.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectsFromJson(json);

  final List<Subject>? _subjects;
  @override
  List<Subject>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Subjects(subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subjects &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectsCopyWith<_$_Subjects> get copyWith =>
      __$$_SubjectsCopyWithImpl<_$_Subjects>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectsToJson(
      this,
    );
  }
}

abstract class _Subjects implements Subjects {
  const factory _Subjects({final List<Subject>? subjects}) = _$_Subjects;

  factory _Subjects.fromJson(Map<String, dynamic> json) = _$_Subjects.fromJson;

  @override
  List<Subject>? get subjects;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectsCopyWith<_$_Subjects> get copyWith =>
      throw _privateConstructorUsedError;
}
