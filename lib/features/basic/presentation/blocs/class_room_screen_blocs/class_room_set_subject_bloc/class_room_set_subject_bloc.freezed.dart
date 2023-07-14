// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_room_set_subject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassRoomSetSubjectEvent {
  int? get subjectId => throw _privateConstructorUsedError;
  int? get classRoomId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? subjectId, int? classRoomId) setSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? subjectId, int? classRoomId)? setSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? subjectId, int? classRoomId)? setSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSubject value) setSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSubject value)? setSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSubject value)? setSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassRoomSetSubjectEventCopyWith<ClassRoomSetSubjectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomSetSubjectEventCopyWith<$Res> {
  factory $ClassRoomSetSubjectEventCopyWith(ClassRoomSetSubjectEvent value,
          $Res Function(ClassRoomSetSubjectEvent) then) =
      _$ClassRoomSetSubjectEventCopyWithImpl<$Res, ClassRoomSetSubjectEvent>;
  @useResult
  $Res call({int? subjectId, int? classRoomId});
}

/// @nodoc
class _$ClassRoomSetSubjectEventCopyWithImpl<$Res,
        $Val extends ClassRoomSetSubjectEvent>
    implements $ClassRoomSetSubjectEventCopyWith<$Res> {
  _$ClassRoomSetSubjectEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_SetSubjectCopyWith<$Res>
    implements $ClassRoomSetSubjectEventCopyWith<$Res> {
  factory _$$_SetSubjectCopyWith(
          _$_SetSubject value, $Res Function(_$_SetSubject) then) =
      __$$_SetSubjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? subjectId, int? classRoomId});
}

/// @nodoc
class __$$_SetSubjectCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectEventCopyWithImpl<$Res, _$_SetSubject>
    implements _$$_SetSubjectCopyWith<$Res> {
  __$$_SetSubjectCopyWithImpl(
      _$_SetSubject _value, $Res Function(_$_SetSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = freezed,
    Object? classRoomId = freezed,
  }) {
    return _then(_$_SetSubject(
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

class _$_SetSubject implements _SetSubject {
  const _$_SetSubject({required this.subjectId, required this.classRoomId});

  @override
  final int? subjectId;
  @override
  final int? classRoomId;

  @override
  String toString() {
    return 'ClassRoomSetSubjectEvent.setSubject(subjectId: $subjectId, classRoomId: $classRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSubject &&
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
  _$$_SetSubjectCopyWith<_$_SetSubject> get copyWith =>
      __$$_SetSubjectCopyWithImpl<_$_SetSubject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? subjectId, int? classRoomId) setSubject,
  }) {
    return setSubject(subjectId, classRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? subjectId, int? classRoomId)? setSubject,
  }) {
    return setSubject?.call(subjectId, classRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? subjectId, int? classRoomId)? setSubject,
    required TResult orElse(),
  }) {
    if (setSubject != null) {
      return setSubject(subjectId, classRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSubject value) setSubject,
  }) {
    return setSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSubject value)? setSubject,
  }) {
    return setSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSubject value)? setSubject,
    required TResult orElse(),
  }) {
    if (setSubject != null) {
      return setSubject(this);
    }
    return orElse();
  }
}

abstract class _SetSubject implements ClassRoomSetSubjectEvent {
  const factory _SetSubject(
      {required final int? subjectId,
      required final int? classRoomId}) = _$_SetSubject;

  @override
  int? get subjectId;
  @override
  int? get classRoomId;
  @override
  @JsonKey(ignore: true)
  _$$_SetSubjectCopyWith<_$_SetSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassRoomSetSubjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String error) failedState,
    required TResult Function() successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String error)? failedState,
    TResult? Function()? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String error)? failedState,
    TResult Function()? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailedState value) failedState,
    required TResult Function(_SuccessState value) successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailedState value)? failedState,
    TResult? Function(_SuccessState value)? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailedState value)? failedState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomSetSubjectStateCopyWith<$Res> {
  factory $ClassRoomSetSubjectStateCopyWith(ClassRoomSetSubjectState value,
          $Res Function(ClassRoomSetSubjectState) then) =
      _$ClassRoomSetSubjectStateCopyWithImpl<$Res, ClassRoomSetSubjectState>;
}

/// @nodoc
class _$ClassRoomSetSubjectStateCopyWithImpl<$Res,
        $Val extends ClassRoomSetSubjectState>
    implements $ClassRoomSetSubjectStateCopyWith<$Res> {
  _$ClassRoomSetSubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'ClassRoomSetSubjectState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String error) failedState,
    required TResult Function() successState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String error)? failedState,
    TResult? Function()? successState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String error)? failedState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailedState value) failedState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailedState value)? failedState,
    TResult? Function(_SuccessState value)? successState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailedState value)? failedState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ClassRoomSetSubjectState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'ClassRoomSetSubjectState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String error) failedState,
    required TResult Function() successState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String error)? failedState,
    TResult? Function()? successState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String error)? failedState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailedState value) failedState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailedState value)? failedState,
    TResult? Function(_SuccessState value)? successState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailedState value)? failedState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ClassRoomSetSubjectState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_FailedStateCopyWith<$Res> {
  factory _$$_FailedStateCopyWith(
          _$_FailedState value, $Res Function(_$_FailedState) then) =
      __$$_FailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailedStateCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectStateCopyWithImpl<$Res, _$_FailedState>
    implements _$$_FailedStateCopyWith<$Res> {
  __$$_FailedStateCopyWithImpl(
      _$_FailedState _value, $Res Function(_$_FailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FailedState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailedState implements _FailedState {
  const _$_FailedState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ClassRoomSetSubjectState.failedState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedStateCopyWith<_$_FailedState> get copyWith =>
      __$$_FailedStateCopyWithImpl<_$_FailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String error) failedState,
    required TResult Function() successState,
  }) {
    return failedState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String error)? failedState,
    TResult? Function()? successState,
  }) {
    return failedState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String error)? failedState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailedState value) failedState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return failedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailedState value)? failedState,
    TResult? Function(_SuccessState value)? successState,
  }) {
    return failedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailedState value)? failedState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState(this);
    }
    return orElse();
  }
}

abstract class _FailedState implements ClassRoomSetSubjectState {
  const factory _FailedState({required final String error}) = _$_FailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailedStateCopyWith<_$_FailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ClassRoomSetSubjectStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'ClassRoomSetSubjectState.successState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String error) failedState,
    required TResult Function() successState,
  }) {
    return successState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String error)? failedState,
    TResult? Function()? successState,
  }) {
    return successState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String error)? failedState,
    TResult Function()? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailedState value) failedState,
    required TResult Function(_SuccessState value) successState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailedState value)? failedState,
    TResult? Function(_SuccessState value)? successState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailedState value)? failedState,
    TResult Function(_SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements ClassRoomSetSubjectState {
  const factory _SuccessState() = _$_SuccessState;
}
