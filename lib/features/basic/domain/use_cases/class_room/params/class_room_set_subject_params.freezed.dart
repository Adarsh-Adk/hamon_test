// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_room_set_subject_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassRoomSetSubjectParams {
  int? get subjectId => throw _privateConstructorUsedError;
  int? get classRoomId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassRoomSetSubjectParamsCopyWith<ClassRoomSetSubjectParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomSetSubjectParamsCopyWith<$Res> {
  factory $ClassRoomSetSubjectParamsCopyWith(ClassRoomSetSubjectParams value,
          $Res Function(ClassRoomSetSubjectParams) then) =
      _$ClassRoomSetSubjectParamsCopyWithImpl<$Res, ClassRoomSetSubjectParams>;
  @useResult
  $Res call({int? subjectId, int? classRoomId});
}

/// @nodoc
class _$ClassRoomSetSubjectParamsCopyWithImpl<$Res,
        $Val extends ClassRoomSetSubjectParams>
    implements $ClassRoomSetSubjectParamsCopyWith<$Res> {
  _$ClassRoomSetSubjectParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? classRoomId = freezed,
  }) {
    return _then(_value.copyWith(
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassRoomSetSubjectParamsCopyWith<$Res>
    implements $ClassRoomSetSubjectParamsCopyWith<$Res> {
  factory _$$_ClassRoomSetSubjectParamsCopyWith(
          _$_ClassRoomSetSubjectParams value,
          $Res Function(_$_ClassRoomSetSubjectParams) then) =
      __$$_ClassRoomSetSubjectParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? subjectId, int? classRoomId});
}

/// @nodoc
class __$$_ClassRoomSetSubjectParamsCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectParamsCopyWithImpl<$Res,
        _$_ClassRoomSetSubjectParams>
    implements _$$_ClassRoomSetSubjectParamsCopyWith<$Res> {
  __$$_ClassRoomSetSubjectParamsCopyWithImpl(
      _$_ClassRoomSetSubjectParams _value,
      $Res Function(_$_ClassRoomSetSubjectParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? classRoomId = freezed,
  }) {
    return _then(_$_ClassRoomSetSubjectParams(
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      classRoomId: freezed == classRoomId
          ? _value.classRoomId
          : classRoomId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ClassRoomSetSubjectParams implements _ClassRoomSetSubjectParams {
  const _$_ClassRoomSetSubjectParams({this.subjectId, this.classRoomId});

  @override
  final int? subjectId;
  @override
  final int? classRoomId;

  @override
  String toString() {
    return 'ClassRoomSetSubjectParams(subjectId: $subjectId, classRoomId: $classRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassRoomSetSubjectParams &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.classRoomId, classRoomId) ||
                other.classRoomId == classRoomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, classRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassRoomSetSubjectParamsCopyWith<_$_ClassRoomSetSubjectParams>
      get copyWith => __$$_ClassRoomSetSubjectParamsCopyWithImpl<
          _$_ClassRoomSetSubjectParams>(this, _$identity);
}

abstract class _ClassRoomSetSubjectParams implements ClassRoomSetSubjectParams {
  const factory _ClassRoomSetSubjectParams(
      {final int? subjectId,
      final int? classRoomId}) = _$_ClassRoomSetSubjectParams;

  @override
  int? get subjectId;
  @override
  int? get classRoomId;
  @override
  @JsonKey(ignore: true)
  _$$_ClassRoomSetSubjectParamsCopyWith<_$_ClassRoomSetSubjectParams>
      get copyWith => throw _privateConstructorUsedError;
}
