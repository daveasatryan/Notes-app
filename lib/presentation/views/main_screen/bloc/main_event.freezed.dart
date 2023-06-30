// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getNotes,
    required TResult Function(NoteEntity noteEntity) deleteNotes,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getNotes,
    TResult? Function(NoteEntity noteEntity)? deleteNotes,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getNotes,
    TResult Function(NoteEntity noteEntity)? deleteNotes,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotesCopyWith<$Res> {
  factory _$$GetNotesCopyWith(
          _$GetNotes value, $Res Function(_$GetNotes) then) =
      __$$GetNotesCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetNotesCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetNotes>
    implements _$$GetNotesCopyWith<$Res> {
  __$$GetNotesCopyWithImpl(_$GetNotes _value, $Res Function(_$GetNotes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetNotes(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotes implements GetNotes {
  _$GetNotes({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MainEvent.getNotes(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotes &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesCopyWith<_$GetNotes> get copyWith =>
      __$$GetNotesCopyWithImpl<_$GetNotes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getNotes,
    required TResult Function(NoteEntity noteEntity) deleteNotes,
    required TResult Function() signOut,
  }) {
    return getNotes(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getNotes,
    TResult? Function(NoteEntity noteEntity)? deleteNotes,
    TResult? Function()? signOut,
  }) {
    return getNotes?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getNotes,
    TResult Function(NoteEntity noteEntity)? deleteNotes,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(SignOut value) signOut,
  }) {
    return getNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(SignOut value)? signOut,
  }) {
    return getNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(this);
    }
    return orElse();
  }
}

abstract class GetNotes implements MainEvent {
  factory GetNotes({required final String uid}) = _$GetNotes;

  String get uid;
  @JsonKey(ignore: true)
  _$$GetNotesCopyWith<_$GetNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotesCopyWith<$Res> {
  factory _$$DeleteNotesCopyWith(
          _$DeleteNotes value, $Res Function(_$DeleteNotes) then) =
      __$$DeleteNotesCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity noteEntity});
}

/// @nodoc
class __$$DeleteNotesCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$DeleteNotes>
    implements _$$DeleteNotesCopyWith<$Res> {
  __$$DeleteNotesCopyWithImpl(
      _$DeleteNotes _value, $Res Function(_$DeleteNotes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteEntity = null,
  }) {
    return _then(_$DeleteNotes(
      noteEntity: null == noteEntity
          ? _value.noteEntity
          : noteEntity // ignore: cast_nullable_to_non_nullable
              as NoteEntity,
    ));
  }
}

/// @nodoc

class _$DeleteNotes implements DeleteNotes {
  _$DeleteNotes({required this.noteEntity});

  @override
  final NoteEntity noteEntity;

  @override
  String toString() {
    return 'MainEvent.deleteNotes(noteEntity: $noteEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotes &&
            (identical(other.noteEntity, noteEntity) ||
                other.noteEntity == noteEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotesCopyWith<_$DeleteNotes> get copyWith =>
      __$$DeleteNotesCopyWithImpl<_$DeleteNotes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getNotes,
    required TResult Function(NoteEntity noteEntity) deleteNotes,
    required TResult Function() signOut,
  }) {
    return deleteNotes(noteEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getNotes,
    TResult? Function(NoteEntity noteEntity)? deleteNotes,
    TResult? Function()? signOut,
  }) {
    return deleteNotes?.call(noteEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getNotes,
    TResult Function(NoteEntity noteEntity)? deleteNotes,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(noteEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(SignOut value) signOut,
  }) {
    return deleteNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(SignOut value)? signOut,
  }) {
    return deleteNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(this);
    }
    return orElse();
  }
}

abstract class DeleteNotes implements MainEvent {
  factory DeleteNotes({required final NoteEntity noteEntity}) = _$DeleteNotes;

  NoteEntity get noteEntity;
  @JsonKey(ignore: true)
  _$$DeleteNotesCopyWith<_$DeleteNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  _$SignOut();

  @override
  String toString() {
    return 'MainEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getNotes,
    required TResult Function(NoteEntity noteEntity) deleteNotes,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getNotes,
    TResult? Function(NoteEntity noteEntity)? deleteNotes,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getNotes,
    TResult Function(NoteEntity noteEntity)? deleteNotes,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotes value) getNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotes value)? getNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotes value)? getNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements MainEvent {
  factory SignOut() = _$SignOut;
}
