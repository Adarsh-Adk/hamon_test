// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassRoom _$ClassRoomFromJson(Map<String, dynamic> json) {
  return _ClassRoom.fromJson(json);
}

/// @nodoc
mixin _$ClassRoom {
  int? get id => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  dynamic get subject => throw _privateConstructorUsedError;
  int? get subjectId => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassRoomCopyWith<ClassRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomCopyWith<$Res> {
  factory $ClassRoomCopyWith(ClassRoom value, $Res Function(ClassRoom) then) =
      _$ClassRoomCopyWithImpl<$Res, ClassRoom>;
  @useResult
  $Res call(
      {int? id,
      int? size,
      dynamic subject,
      int? subjectId,
      String? layout,
      String? name});
}

/// @nodoc
class _$ClassRoomCopyWithImpl<$Res, $Val extends ClassRoom>
    implements $ClassRoomCopyWith<$Res> {
  _$ClassRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? size = freezed,
    Object? subject = freezed,
    Object? subjectId = freezed,
    Object? layout = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassRoomCopyWith<$Res> implements $ClassRoomCopyWith<$Res> {
  factory _$$_ClassRoomCopyWith(
          _$_ClassRoom value, $Res Function(_$_ClassRoom) then) =
      __$$_ClassRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? size,
      dynamic subject,
      int? subjectId,
      String? layout,
      String? name});
}

/// @nodoc
class __$$_ClassRoomCopyWithImpl<$Res>
    extends _$ClassRoomCopyWithImpl<$Res, _$_ClassRoom>
    implements _$$_ClassRoomCopyWith<$Res> {
  __$$_ClassRoomCopyWithImpl(
      _$_ClassRoom _value, $Res Function(_$_ClassRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? size = freezed,
    Object? subject = freezed,
    Object? subjectId = freezed,
    Object? layout = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ClassRoom(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassRoom implements _ClassRoom {
  const _$_ClassRoom(
      {this.id,
      this.size,
      this.subject,
      this.subjectId,
      this.layout,
      this.name});

  factory _$_ClassRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ClassRoomFromJson(json);

  @override
  final int? id;
  @override
  final int? size;
  @override
  final dynamic subject;
  @override
  final int? subjectId;
  @override
  final String? layout;
  @override
  final String? name;

  @override
  String toString() {
    return 'ClassRoom(id: $id, size: $size, subject: $subject, subjectId: $subjectId, layout: $layout, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, size,
      const DeepCollectionEquality().hash(subject), subjectId, layout, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassRoomCopyWith<_$_ClassRoom> get copyWith =>
      __$$_ClassRoomCopyWithImpl<_$_ClassRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassRoomToJson(
      this,
    );
  }
}

abstract class _ClassRoom implements ClassRoom {
  const factory _ClassRoom(
      {final int? id,
      final int? size,
      final dynamic subject,
      final int? subjectId,
      final String? layout,
      final String? name}) = _$_ClassRoom;

  factory _ClassRoom.fromJson(Map<String, dynamic> json) =
      _$_ClassRoom.fromJson;

  @override
  int? get id;
  @override
  int? get size;
  @override
  dynamic get subject;
  @override
  int? get subjectId;
  @override
  String? get layout;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ClassRoomCopyWith<_$_ClassRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
