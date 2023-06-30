// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String email, String password) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String email, String password)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignIn value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(SignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignIn value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(SignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignIn value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignInCopyWith<$Res> {
  factory _$$InitialSignInCopyWith(
          _$InitialSignIn value, $Res Function(_$InitialSignIn) then) =
      __$$InitialSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSignInCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$InitialSignIn>
    implements _$$InitialSignInCopyWith<$Res> {
  __$$InitialSignInCopyWithImpl(
      _$InitialSignIn _value, $Res Function(_$InitialSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignIn implements InitialSignIn {
  _$InitialSignIn();

  @override
  String toString() {
    return 'SignInEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String email, String password) signIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String email, String password)? signIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignIn value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(SignIn value) signIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignIn value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(SignIn value)? signIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignIn value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSignIn implements SignInEvent {
  factory InitialSignIn() = _$InitialSignIn;
}

/// @nodoc
abstract class _$$ValidateEmailCopyWith<$Res> {
  factory _$$ValidateEmailCopyWith(
          _$ValidateEmail value, $Res Function(_$ValidateEmail) then) =
      __$$ValidateEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ValidateEmailCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ValidateEmail>
    implements _$$ValidateEmailCopyWith<$Res> {
  __$$ValidateEmailCopyWithImpl(
      _$ValidateEmail _value, $Res Function(_$ValidateEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ValidateEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateEmail implements ValidateEmail {
  const _$ValidateEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.validateEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateEmailCopyWith<_$ValidateEmail> get copyWith =>
      __$$ValidateEmailCopyWithImpl<_$ValidateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String email, String password) signIn,
  }) {
    return validateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String email, String password)? signIn,
  }) {
    return validateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignIn value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(SignIn value) signIn,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignIn value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(SignIn value)? signIn,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignIn value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class ValidateEmail implements SignInEvent {
  const factory ValidateEmail(final String email) = _$ValidateEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$ValidateEmailCopyWith<_$ValidateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatePasswordCopyWith<$Res> {
  factory _$$ValidatePasswordCopyWith(
          _$ValidatePassword value, $Res Function(_$ValidatePassword) then) =
      __$$ValidatePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$ValidatePasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ValidatePassword>
    implements _$$ValidatePasswordCopyWith<$Res> {
  __$$ValidatePasswordCopyWithImpl(
      _$ValidatePassword _value, $Res Function(_$ValidatePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$ValidatePassword(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidatePassword implements ValidatePassword {
  const _$ValidatePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.validatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatePassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatePasswordCopyWith<_$ValidatePassword> get copyWith =>
      __$$ValidatePasswordCopyWithImpl<_$ValidatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String email, String password) signIn,
  }) {
    return validatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String email, String password)? signIn,
  }) {
    return validatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String email, String password)? signIn,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignIn value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(SignIn value) signIn,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignIn value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(SignIn value)? signIn,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignIn value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class ValidatePassword implements SignInEvent {
  const factory ValidatePassword(final String password) = _$ValidatePassword;

  String get password;
  @JsonKey(ignore: true)
  _$$ValidatePasswordCopyWith<_$ValidatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignIn(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignIn implements SignIn {
  _$SignIn(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      __$$SignInCopyWithImpl<_$SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String email, String password) signIn,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String email, String password)? signIn,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String email, String password)? signIn,
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
    required TResult Function(InitialSignIn value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(SignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignIn value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(SignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignIn value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements SignInEvent {
  factory SignIn(final String email, final String password) = _$SignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}
