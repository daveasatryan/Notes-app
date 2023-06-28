// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<NoteEntity> notes) note,
    required TResult Function(String msg, String errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<NoteEntity> notes)? note,
    TResult? Function(String msg, String errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<NoteEntity> notes)? note,
    TResult Function(String msg, String errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainStateLoading value) loading,
    required TResult Function(_$MainStateSuccess value) success,
    required TResult Function(_$MainStateNote value) note,
    required TResult Function(_$MainStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MainStateLoading value)? loading,
    TResult? Function(_$MainStateSuccess value)? success,
    TResult? Function(_$MainStateNote value)? note,
    TResult? Function(_$MainStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainStateLoading value)? loading,
    TResult Function(_$MainStateSuccess value)? success,
    TResult Function(_$MainStateNote value)? note,
    TResult Function(_$MainStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$MainStateLoadingCopyWith<$Res> {
  factory _$$_$MainStateLoadingCopyWith(_$_$MainStateLoading value,
          $Res Function(_$_$MainStateLoading) then) =
      __$$_$MainStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$MainStateLoadingCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_$MainStateLoading>
    implements _$$_$MainStateLoadingCopyWith<$Res> {
  __$$_$MainStateLoadingCopyWithImpl(
      _$_$MainStateLoading _value, $Res Function(_$_$MainStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$MainStateLoading implements _$MainStateLoading {
  const _$_$MainStateLoading();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$MainStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<NoteEntity> notes) note,
    required TResult Function(String msg, String errorCode) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<NoteEntity> notes)? note,
    TResult? Function(String msg, String errorCode)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<NoteEntity> notes)? note,
    TResult Function(String msg, String errorCode)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainStateLoading value) loading,
    required TResult Function(_$MainStateSuccess value) success,
    required TResult Function(_$MainStateNote value) note,
    required TResult Function(_$MainStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MainStateLoading value)? loading,
    TResult? Function(_$MainStateSuccess value)? success,
    TResult? Function(_$MainStateNote value)? note,
    TResult? Function(_$MainStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainStateLoading value)? loading,
    TResult Function(_$MainStateSuccess value)? success,
    TResult Function(_$MainStateNote value)? note,
    TResult Function(_$MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$MainStateLoading implements MainState {
  const factory _$MainStateLoading() = _$_$MainStateLoading;
}

/// @nodoc
abstract class _$$_$MainStateSuccessCopyWith<$Res> {
  factory _$$_$MainStateSuccessCopyWith(_$_$MainStateSuccess value,
          $Res Function(_$_$MainStateSuccess) then) =
      __$$_$MainStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$MainStateSuccessCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_$MainStateSuccess>
    implements _$$_$MainStateSuccessCopyWith<$Res> {
  __$$_$MainStateSuccessCopyWithImpl(
      _$_$MainStateSuccess _value, $Res Function(_$_$MainStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$MainStateSuccess implements _$MainStateSuccess {
  const _$_$MainStateSuccess();

  @override
  String toString() {
    return 'MainState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$MainStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<NoteEntity> notes) note,
    required TResult Function(String msg, String errorCode) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<NoteEntity> notes)? note,
    TResult? Function(String msg, String errorCode)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<NoteEntity> notes)? note,
    TResult Function(String msg, String errorCode)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainStateLoading value) loading,
    required TResult Function(_$MainStateSuccess value) success,
    required TResult Function(_$MainStateNote value) note,
    required TResult Function(_$MainStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MainStateLoading value)? loading,
    TResult? Function(_$MainStateSuccess value)? success,
    TResult? Function(_$MainStateNote value)? note,
    TResult? Function(_$MainStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainStateLoading value)? loading,
    TResult Function(_$MainStateSuccess value)? success,
    TResult Function(_$MainStateNote value)? note,
    TResult Function(_$MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$MainStateSuccess implements MainState {
  const factory _$MainStateSuccess() = _$_$MainStateSuccess;
}

/// @nodoc
abstract class _$$_$MainStateNoteCopyWith<$Res> {
  factory _$$_$MainStateNoteCopyWith(
          _$_$MainStateNote value, $Res Function(_$_$MainStateNote) then) =
      __$$_$MainStateNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteEntity> notes});
}

/// @nodoc
class __$$_$MainStateNoteCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_$MainStateNote>
    implements _$$_$MainStateNoteCopyWith<$Res> {
  __$$_$MainStateNoteCopyWithImpl(
      _$_$MainStateNote _value, $Res Function(_$_$MainStateNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$_$MainStateNote(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteEntity>,
    ));
  }
}

/// @nodoc

class _$_$MainStateNote implements _$MainStateNote {
  const _$_$MainStateNote({required final List<NoteEntity> notes})
      : _notes = notes;

  final List<NoteEntity> _notes;
  @override
  List<NoteEntity> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'MainState.note(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MainStateNote &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$MainStateNoteCopyWith<_$_$MainStateNote> get copyWith =>
      __$$_$MainStateNoteCopyWithImpl<_$_$MainStateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<NoteEntity> notes) note,
    required TResult Function(String msg, String errorCode) error,
  }) {
    return note(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<NoteEntity> notes)? note,
    TResult? Function(String msg, String errorCode)? error,
  }) {
    return note?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<NoteEntity> notes)? note,
    TResult Function(String msg, String errorCode)? error,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainStateLoading value) loading,
    required TResult Function(_$MainStateSuccess value) success,
    required TResult Function(_$MainStateNote value) note,
    required TResult Function(_$MainStateError value) error,
  }) {
    return note(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MainStateLoading value)? loading,
    TResult? Function(_$MainStateSuccess value)? success,
    TResult? Function(_$MainStateNote value)? note,
    TResult? Function(_$MainStateError value)? error,
  }) {
    return note?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainStateLoading value)? loading,
    TResult Function(_$MainStateSuccess value)? success,
    TResult Function(_$MainStateNote value)? note,
    TResult Function(_$MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(this);
    }
    return orElse();
  }
}

abstract class _$MainStateNote implements MainState {
  const factory _$MainStateNote({required final List<NoteEntity> notes}) =
      _$_$MainStateNote;

  List<NoteEntity> get notes;
  @JsonKey(ignore: true)
  _$$_$MainStateNoteCopyWith<_$_$MainStateNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MainStateErrorCopyWith<$Res> {
  factory _$$_$MainStateErrorCopyWith(
          _$_$MainStateError value, $Res Function(_$_$MainStateError) then) =
      __$$_$MainStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg, String errorCode});
}

/// @nodoc
class __$$_$MainStateErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_$MainStateError>
    implements _$$_$MainStateErrorCopyWith<$Res> {
  __$$_$MainStateErrorCopyWithImpl(
      _$_$MainStateError _value, $Res Function(_$_$MainStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? errorCode = null,
  }) {
    return _then(_$_$MainStateError(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MainStateError implements _$MainStateError {
  const _$_$MainStateError({required this.msg, required this.errorCode});

  @override
  final String msg;
  @override
  final String errorCode;

  @override
  String toString() {
    return 'MainState.error(msg: $msg, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MainStateError &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$MainStateErrorCopyWith<_$_$MainStateError> get copyWith =>
      __$$_$MainStateErrorCopyWithImpl<_$_$MainStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<NoteEntity> notes) note,
    required TResult Function(String msg, String errorCode) error,
  }) {
    return error(msg, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<NoteEntity> notes)? note,
    TResult? Function(String msg, String errorCode)? error,
  }) {
    return error?.call(msg, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<NoteEntity> notes)? note,
    TResult Function(String msg, String errorCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainStateLoading value) loading,
    required TResult Function(_$MainStateSuccess value) success,
    required TResult Function(_$MainStateNote value) note,
    required TResult Function(_$MainStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$MainStateLoading value)? loading,
    TResult? Function(_$MainStateSuccess value)? success,
    TResult? Function(_$MainStateNote value)? note,
    TResult? Function(_$MainStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainStateLoading value)? loading,
    TResult Function(_$MainStateSuccess value)? success,
    TResult Function(_$MainStateNote value)? note,
    TResult Function(_$MainStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$MainStateError implements MainState {
  const factory _$MainStateError(
      {required final String msg,
      required final String errorCode}) = _$_$MainStateError;

  String get msg;
  String get errorCode;
  @JsonKey(ignore: true)
  _$$_$MainStateErrorCopyWith<_$_$MainStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
