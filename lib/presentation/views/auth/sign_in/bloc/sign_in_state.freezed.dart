// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password)
        signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateSignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateSignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateSignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$SignInStateLoadingCopyWith<$Res> {
  factory _$$_$SignInStateLoadingCopyWith(_$_$SignInStateLoading value,
          $Res Function(_$_$SignInStateLoading) then) =
      __$$_$SignInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SignInStateLoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateLoading>
    implements _$$_$SignInStateLoadingCopyWith<$Res> {
  __$$_$SignInStateLoadingCopyWithImpl(_$_$SignInStateLoading _value,
      $Res Function(_$_$SignInStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$SignInStateLoading implements _$SignInStateLoading {
  const _$_$SignInStateLoading();

  @override
  String toString() {
    return 'SignInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SignInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password)
        signIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password)? signIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password)? signIn,
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
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateSignIn value) signIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateSignIn value)? signIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateLoading implements SignInState {
  const factory _$SignInStateLoading() = _$_$SignInStateLoading;
}

/// @nodoc
abstract class _$$_$SignInStateSuccessCopyWith<$Res> {
  factory _$$_$SignInStateSuccessCopyWith(_$_$SignInStateSuccess value,
          $Res Function(_$_$SignInStateSuccess) then) =
      __$$_$SignInStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SignInStateSuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateSuccess>
    implements _$$_$SignInStateSuccessCopyWith<$Res> {
  __$$_$SignInStateSuccessCopyWithImpl(_$_$SignInStateSuccess _value,
      $Res Function(_$_$SignInStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$SignInStateSuccess implements _$SignInStateSuccess {
  const _$_$SignInStateSuccess();

  @override
  String toString() {
    return 'SignInState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SignInStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password)
        signIn,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password)? signIn,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password)? signIn,
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
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateSignIn value) signIn,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateSignIn value)? signIn,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateSuccess implements SignInState {
  const factory _$SignInStateSuccess() = _$_$SignInStateSuccess;
}

/// @nodoc
abstract class _$$_$SignInStateErrorCopyWith<$Res> {
  factory _$$_$SignInStateErrorCopyWith(_$_$SignInStateError value,
          $Res Function(_$_$SignInStateError) then) =
      __$$_$SignInStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_$SignInStateErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateError>
    implements _$$_$SignInStateErrorCopyWith<$Res> {
  __$$_$SignInStateErrorCopyWithImpl(
      _$_$SignInStateError _value, $Res Function(_$_$SignInStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_$SignInStateError(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$SignInStateError implements _$SignInStateError {
  const _$_$SignInStateError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'SignInState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SignInStateError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SignInStateErrorCopyWith<_$_$SignInStateError> get copyWith =>
      __$$_$SignInStateErrorCopyWithImpl<_$_$SignInStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password)
        signIn,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password)? signIn,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password)? signIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateSignIn value) signIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateSignIn value)? signIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateError implements SignInState {
  const factory _$SignInStateError({required final String msg}) =
      _$_$SignInStateError;

  String get msg;
  @JsonKey(ignore: true)
  _$$_$SignInStateErrorCopyWith<_$_$SignInStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$SignInStateSignInCopyWith<$Res> {
  factory _$$_$SignInStateSignInCopyWith(_$_$SignInStateSignIn value,
          $Res Function(_$_$SignInStateSignIn) then) =
      __$$_$SignInStateSignInCopyWithImpl<$Res>;
  @useResult
  $Res call({ValidationEnum email, ValidationEnum password});
}

/// @nodoc
class __$$_$SignInStateSignInCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_$SignInStateSignIn>
    implements _$$_$SignInStateSignInCopyWith<$Res> {
  __$$_$SignInStateSignInCopyWithImpl(
      _$_$SignInStateSignIn _value, $Res Function(_$_$SignInStateSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_$SignInStateSignIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ValidationEnum,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValidationEnum,
    ));
  }
}

/// @nodoc

class _$_$SignInStateSignIn implements _$SignInStateSignIn {
  const _$_$SignInStateSignIn({required this.email, required this.password});

  @override
  final ValidationEnum email;
  @override
  final ValidationEnum password;

  @override
  String toString() {
    return 'SignInState.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SignInStateSignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SignInStateSignInCopyWith<_$_$SignInStateSignIn> get copyWith =>
      __$$_$SignInStateSignInCopyWithImpl<_$_$SignInStateSignIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
    required TResult Function(ValidationEnum email, ValidationEnum password)
        signIn,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
    TResult? Function(ValidationEnum email, ValidationEnum password)? signIn,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    TResult Function(ValidationEnum email, ValidationEnum password)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SignInStateLoading value) loading,
    required TResult Function(_$SignInStateSuccess value) success,
    required TResult Function(_$SignInStateError value) error,
    required TResult Function(_$SignInStateSignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$SignInStateLoading value)? loading,
    TResult? Function(_$SignInStateSuccess value)? success,
    TResult? Function(_$SignInStateError value)? error,
    TResult? Function(_$SignInStateSignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SignInStateLoading value)? loading,
    TResult Function(_$SignInStateSuccess value)? success,
    TResult Function(_$SignInStateError value)? error,
    TResult Function(_$SignInStateSignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _$SignInStateSignIn implements SignInState {
  const factory _$SignInStateSignIn(
      {required final ValidationEnum email,
      required final ValidationEnum password}) = _$_$SignInStateSignIn;

  ValidationEnum get email;
  ValidationEnum get password;
  @JsonKey(ignore: true)
  _$$_$SignInStateSignInCopyWith<_$_$SignInStateSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}
