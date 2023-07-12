// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Registrations _$RegistrationsFromJson(Map<String, dynamic> json) {
  return _Registrations.fromJson(json);
}

/// @nodoc
mixin _$Registrations {
  List<Registration>? get registrations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationsCopyWith<Registrations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationsCopyWith<$Res> {
  factory $RegistrationsCopyWith(
          Registrations value, $Res Function(Registrations) then) =
      _$RegistrationsCopyWithImpl<$Res, Registrations>;
  @useResult
  $Res call({List<Registration>? registrations});
}

/// @nodoc
class _$RegistrationsCopyWithImpl<$Res, $Val extends Registrations>
    implements $RegistrationsCopyWith<$Res> {
  _$RegistrationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrations = freezed,
  }) {
    return _then(_value.copyWith(
      registrations: freezed == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<Registration>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationsCopyWith<$Res>
    implements $RegistrationsCopyWith<$Res> {
  factory _$$_RegistrationsCopyWith(
          _$_Registrations value, $Res Function(_$_Registrations) then) =
      __$$_RegistrationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Registration>? registrations});
}

/// @nodoc
class __$$_RegistrationsCopyWithImpl<$Res>
    extends _$RegistrationsCopyWithImpl<$Res, _$_Registrations>
    implements _$$_RegistrationsCopyWith<$Res> {
  __$$_RegistrationsCopyWithImpl(
      _$_Registrations _value, $Res Function(_$_Registrations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrations = freezed,
  }) {
    return _then(_$_Registrations(
      registrations: freezed == registrations
          ? _value._registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<Registration>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Registrations implements _Registrations {
  const _$_Registrations({final List<Registration>? registrations})
      : _registrations = registrations;

  factory _$_Registrations.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationsFromJson(json);

  final List<Registration>? _registrations;
  @override
  List<Registration>? get registrations {
    final value = _registrations;
    if (value == null) return null;
    if (_registrations is EqualUnmodifiableListView) return _registrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Registrations(registrations: $registrations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registrations &&
            const DeepCollectionEquality()
                .equals(other._registrations, _registrations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registrations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationsCopyWith<_$_Registrations> get copyWith =>
      __$$_RegistrationsCopyWithImpl<_$_Registrations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationsToJson(
      this,
    );
  }
}

abstract class _Registrations implements Registrations {
  const factory _Registrations({final List<Registration>? registrations}) =
      _$_Registrations;

  factory _Registrations.fromJson(Map<String, dynamic> json) =
      _$_Registrations.fromJson;

  @override
  List<Registration>? get registrations;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationsCopyWith<_$_Registrations> get copyWith =>
      throw _privateConstructorUsedError;
}
