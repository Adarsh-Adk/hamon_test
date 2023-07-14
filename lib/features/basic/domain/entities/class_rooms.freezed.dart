// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassRooms _$ClassRoomsFromJson(Map<String, dynamic> json) {
  return _ClassRooms.fromJson(json);
}

/// @nodoc
mixin _$ClassRooms {
  List<ClassRoom>? get classrooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassRoomsCopyWith<ClassRooms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomsCopyWith<$Res> {
  factory $ClassRoomsCopyWith(
          ClassRooms value, $Res Function(ClassRooms) then) =
      _$ClassRoomsCopyWithImpl<$Res, ClassRooms>;
  @useResult
  $Res call({List<ClassRoom>? classrooms});
}

/// @nodoc
class _$ClassRoomsCopyWithImpl<$Res, $Val extends ClassRooms>
    implements $ClassRoomsCopyWith<$Res> {
  _$ClassRoomsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_value.copyWith(
      classrooms: freezed == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassRoom>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassRoomsCopyWith<$Res>
    implements $ClassRoomsCopyWith<$Res> {
  factory _$$_ClassRoomsCopyWith(
          _$_ClassRooms value, $Res Function(_$_ClassRooms) then) =
      __$$_ClassRoomsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClassRoom>? classrooms});
}

/// @nodoc
class __$$_ClassRoomsCopyWithImpl<$Res>
    extends _$ClassRoomsCopyWithImpl<$Res, _$_ClassRooms>
    implements _$$_ClassRoomsCopyWith<$Res> {
  __$$_ClassRoomsCopyWithImpl(
      _$_ClassRooms _value, $Res Function(_$_ClassRooms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_$_ClassRooms(
      classrooms: freezed == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassRoom>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassRooms implements _ClassRooms {
  const _$_ClassRooms({final List<ClassRoom>? classrooms})
      : _classrooms = classrooms;

  factory _$_ClassRooms.fromJson(Map<String, dynamic> json) =>
      _$$_ClassRoomsFromJson(json);

  final List<ClassRoom>? _classrooms;
  @override
  List<ClassRoom>? get classrooms {
    final value = _classrooms;
    if (value == null) return null;
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassRooms(classrooms: $classrooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassRooms &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_classrooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassRoomsCopyWith<_$_ClassRooms> get copyWith =>
      __$$_ClassRoomsCopyWithImpl<_$_ClassRooms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassRoomsToJson(
      this,
    );
  }
}

abstract class _ClassRooms implements ClassRooms {
  const factory _ClassRooms({final List<ClassRoom>? classrooms}) =
      _$_ClassRooms;

  factory _ClassRooms.fromJson(Map<String, dynamic> json) =
      _$_ClassRooms.fromJson;

  @override
  List<ClassRoom>? get classrooms;
  @override
  @JsonKey(ignore: true)
  _$$_ClassRoomsCopyWith<_$_ClassRooms> get copyWith =>
      throw _privateConstructorUsedError;
}
