// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetRegistrationParams {
  int? get subjectId => throw _privateConstructorUsedError;
  int? get studentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetRegistrationParamsCopyWith<SetRegistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetRegistrationParamsCopyWith<$Res> {
  factory $SetRegistrationParamsCopyWith(SetRegistrationParams value,
          $Res Function(SetRegistrationParams) then) =
      _$SetRegistrationParamsCopyWithImpl<$Res, SetRegistrationParams>;
  @useResult
  $Res call({int? subjectId, int? studentId});
}

/// @nodoc
class _$SetRegistrationParamsCopyWithImpl<$Res,
        $Val extends SetRegistrationParams>
    implements $SetRegistrationParamsCopyWith<$Res> {
  _$SetRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_value.copyWith(
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetRegistrationParamsCopyWith<$Res>
    implements $SetRegistrationParamsCopyWith<$Res> {
  factory _$$_SetRegistrationParamsCopyWith(_$_SetRegistrationParams value,
          $Res Function(_$_SetRegistrationParams) then) =
      __$$_SetRegistrationParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? subjectId, int? studentId});
}

/// @nodoc
class __$$_SetRegistrationParamsCopyWithImpl<$Res>
    extends _$SetRegistrationParamsCopyWithImpl<$Res, _$_SetRegistrationParams>
    implements _$$_SetRegistrationParamsCopyWith<$Res> {
  __$$_SetRegistrationParamsCopyWithImpl(_$_SetRegistrationParams _value,
      $Res Function(_$_SetRegistrationParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$_SetRegistrationParams(
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SetRegistrationParams implements _SetRegistrationParams {
  const _$_SetRegistrationParams({this.subjectId, this.studentId});

  @override
  final int? subjectId;
  @override
  final int? studentId;

  @override
  String toString() {
    return 'SetRegistrationParams(subjectId: $subjectId, studentId: $studentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetRegistrationParams &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetRegistrationParamsCopyWith<_$_SetRegistrationParams> get copyWith =>
      __$$_SetRegistrationParamsCopyWithImpl<_$_SetRegistrationParams>(
          this, _$identity);
}

abstract class _SetRegistrationParams implements SetRegistrationParams {
  const factory _SetRegistrationParams(
      {final int? subjectId, final int? studentId}) = _$_SetRegistrationParams;

  @override
  int? get subjectId;
  @override
  int? get studentId;
  @override
  @JsonKey(ignore: true)
  _$$_SetRegistrationParamsCopyWith<_$_SetRegistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
