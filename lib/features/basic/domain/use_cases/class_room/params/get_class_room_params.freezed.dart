// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_class_room_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetClassRoomParams {
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetClassRoomParamsCopyWith<GetClassRoomParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClassRoomParamsCopyWith<$Res> {
  factory $GetClassRoomParamsCopyWith(
          GetClassRoomParams value, $Res Function(GetClassRoomParams) then) =
      _$GetClassRoomParamsCopyWithImpl<$Res, GetClassRoomParams>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$GetClassRoomParamsCopyWithImpl<$Res, $Val extends GetClassRoomParams>
    implements $GetClassRoomParamsCopyWith<$Res> {
  _$GetClassRoomParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetClassRoomParamsCopyWith<$Res>
    implements $GetClassRoomParamsCopyWith<$Res> {
  factory _$$_GetClassRoomParamsCopyWith(_$_GetClassRoomParams value,
          $Res Function(_$_GetClassRoomParams) then) =
      __$$_GetClassRoomParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_GetClassRoomParamsCopyWithImpl<$Res>
    extends _$GetClassRoomParamsCopyWithImpl<$Res, _$_GetClassRoomParams>
    implements _$$_GetClassRoomParamsCopyWith<$Res> {
  __$$_GetClassRoomParamsCopyWithImpl(
      _$_GetClassRoomParams _value, $Res Function(_$_GetClassRoomParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_GetClassRoomParams(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GetClassRoomParams implements _GetClassRoomParams {
  const _$_GetClassRoomParams({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'GetClassRoomParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClassRoomParams &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClassRoomParamsCopyWith<_$_GetClassRoomParams> get copyWith =>
      __$$_GetClassRoomParamsCopyWithImpl<_$_GetClassRoomParams>(
          this, _$identity);
}

abstract class _GetClassRoomParams implements GetClassRoomParams {
  const factory _GetClassRoomParams({final int? id}) = _$_GetClassRoomParams;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetClassRoomParamsCopyWith<_$_GetClassRoomParams> get copyWith =>
      throw _privateConstructorUsedError;
}
