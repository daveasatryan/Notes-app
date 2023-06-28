// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_sheet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomSheetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity note) addNote,
    required TResult Function() updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity note)? addNote,
    TResult? Function()? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity note)? addNote,
    TResult Function()? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNote value) addNote,
    required TResult Function(UpdateNote value) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNote value)? addNote,
    TResult? Function(UpdateNote value)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNote value)? addNote,
    TResult Function(UpdateNote value)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetEventCopyWith<$Res> {
  factory $BottomSheetEventCopyWith(
          BottomSheetEvent value, $Res Function(BottomSheetEvent) then) =
      _$BottomSheetEventCopyWithImpl<$Res, BottomSheetEvent>;
}

/// @nodoc
class _$BottomSheetEventCopyWithImpl<$Res, $Val extends BottomSheetEvent>
    implements $BottomSheetEventCopyWith<$Res> {
  _$BottomSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddNoteCopyWith<$Res> {
  factory _$$AddNoteCopyWith(_$AddNote value, $Res Function(_$AddNote) then) =
      __$$AddNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteEntity note});
}

/// @nodoc
class __$$AddNoteCopyWithImpl<$Res>
    extends _$BottomSheetEventCopyWithImpl<$Res, _$AddNote>
    implements _$$AddNoteCopyWith<$Res> {
  __$$AddNoteCopyWithImpl(_$AddNote _value, $Res Function(_$AddNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$AddNote(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteEntity,
    ));
  }
}

/// @nodoc

class _$AddNote implements AddNote {
  _$AddNote({required this.note});

  @override
  final NoteEntity note;

  @override
  String toString() {
    return 'BottomSheetEvent.addNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNote &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteCopyWith<_$AddNote> get copyWith =>
      __$$AddNoteCopyWithImpl<_$AddNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity note) addNote,
    required TResult Function() updateNote,
  }) {
    return addNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity note)? addNote,
    TResult? Function()? updateNote,
  }) {
    return addNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity note)? addNote,
    TResult Function()? updateNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNote value) addNote,
    required TResult Function(UpdateNote value) updateNote,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNote value)? addNote,
    TResult? Function(UpdateNote value)? updateNote,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNote value)? addNote,
    TResult Function(UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class AddNote implements BottomSheetEvent {
  factory AddNote({required final NoteEntity note}) = _$AddNote;

  NoteEntity get note;
  @JsonKey(ignore: true)
  _$$AddNoteCopyWith<_$AddNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoteCopyWith<$Res> {
  factory _$$UpdateNoteCopyWith(
          _$UpdateNote value, $Res Function(_$UpdateNote) then) =
      __$$UpdateNoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateNoteCopyWithImpl<$Res>
    extends _$BottomSheetEventCopyWithImpl<$Res, _$UpdateNote>
    implements _$$UpdateNoteCopyWith<$Res> {
  __$$UpdateNoteCopyWithImpl(
      _$UpdateNote _value, $Res Function(_$UpdateNote) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateNote implements UpdateNote {
  _$UpdateNote();

  @override
  String toString() {
    return 'BottomSheetEvent.updateNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateNote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteEntity note) addNote,
    required TResult Function() updateNote,
  }) {
    return updateNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteEntity note)? addNote,
    TResult? Function()? updateNote,
  }) {
    return updateNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteEntity note)? addNote,
    TResult Function()? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNote value) addNote,
    required TResult Function(UpdateNote value) updateNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddNote value)? addNote,
    TResult? Function(UpdateNote value)? updateNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNote value)? addNote,
    TResult Function(UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class UpdateNote implements BottomSheetEvent {
  factory UpdateNote() = _$UpdateNote;
}
