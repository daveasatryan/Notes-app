// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignUpCopyWith<$Res> {
  factory _$$InitialSignUpCopyWith(
          _$InitialSignUp value, $Res Function(_$InitialSignUp) then) =
      __$$InitialSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$InitialSignUp>
    implements _$$InitialSignUpCopyWith<$Res> {
  __$$InitialSignUpCopyWithImpl(
      _$InitialSignUp _value, $Res Function(_$InitialSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignUp implements InitialSignUp {
  _$InitialSignUp();

  @override
  String toString() {
    return 'SignUpEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
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
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSignUp implements SignUpEvent {
  factory InitialSignUp() = _$InitialSignUp;
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
    extends _$SignUpEventCopyWithImpl<$Res, _$ValidateEmail>
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
    return 'SignUpEvent.validateEmail(email: $email)';
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
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) {
    return validateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) {
    return validateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
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
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class ValidateEmail implements SignUpEvent {
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
    extends _$SignUpEventCopyWithImpl<$Res, _$ValidatePassword>
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
    return 'SignUpEvent.validatePassword(password: $password)';
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
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) {
    return validatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) {
    return validatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
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
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class ValidatePassword implements SignUpEvent {
  const factory ValidatePassword(final String password) = _$ValidatePassword;

  String get password;
  @JsonKey(ignore: true)
  _$$ValidatePasswordCopyWith<_$ValidatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateConfirmePasswordCopyWith<$Res> {
  factory _$$ValidateConfirmePasswordCopyWith(_$ValidateConfirmePassword value,
          $Res Function(_$ValidateConfirmePassword) then) =
      __$$ValidateConfirmePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword, String password});
}

/// @nodoc
class __$$ValidateConfirmePasswordCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ValidateConfirmePassword>
    implements _$$ValidateConfirmePasswordCopyWith<$Res> {
  __$$ValidateConfirmePasswordCopyWithImpl(_$ValidateConfirmePassword _value,
      $Res Function(_$ValidateConfirmePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
    Object? password = null,
  }) {
    return _then(_$ValidateConfirmePassword(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateConfirmePassword implements ValidateConfirmePassword {
  const _$ValidateConfirmePassword(this.confirmPassword, this.password);

  @override
  final String confirmPassword;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.validateConfirmPassword(confirmPassword: $confirmPassword, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateConfirmePassword &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateConfirmePasswordCopyWith<_$ValidateConfirmePassword>
      get copyWith =>
          __$$ValidateConfirmePasswordCopyWithImpl<_$ValidateConfirmePassword>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) {
    return validateConfirmPassword(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) {
    return validateConfirmPassword?.call(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
    required TResult orElse(),
  }) {
    if (validateConfirmPassword != null) {
      return validateConfirmPassword(confirmPassword, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) {
    return validateConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) {
    return validateConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (validateConfirmPassword != null) {
      return validateConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class ValidateConfirmePassword implements SignUpEvent {
  const factory ValidateConfirmePassword(
          final String confirmPassword, final String password) =
      _$ValidateConfirmePassword;

  String get confirmPassword;
  String get password;
  @JsonKey(ignore: true)
  _$$ValidateConfirmePasswordCopyWith<_$ValidateConfirmePassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$SignUp(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUp implements SignUp {
  _$SignUp(this.email, this.password, this.confirmPassword);

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.signUp(email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      __$$SignUpCopyWithImpl<_$SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) validateEmail,
    required TResult Function(String password) validatePassword,
    required TResult Function(String confirmPassword, String password)
        validateConfirmPassword,
    required TResult Function(
            String email, String password, String confirmPassword)
        signUp,
  }) {
    return signUp(email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? validateEmail,
    TResult? Function(String password)? validatePassword,
    TResult? Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult? Function(String email, String password, String confirmPassword)?
        signUp,
  }) {
    return signUp?.call(email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? validateEmail,
    TResult Function(String password)? validatePassword,
    TResult Function(String confirmPassword, String password)?
        validateConfirmPassword,
    TResult Function(String email, String password, String confirmPassword)?
        signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSignUp value) initial,
    required TResult Function(ValidateEmail value) validateEmail,
    required TResult Function(ValidatePassword value) validatePassword,
    required TResult Function(ValidateConfirmePassword value)
        validateConfirmPassword,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSignUp value)? initial,
    TResult? Function(ValidateEmail value)? validateEmail,
    TResult? Function(ValidatePassword value)? validatePassword,
    TResult? Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult? Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSignUp value)? initial,
    TResult Function(ValidateEmail value)? validateEmail,
    TResult Function(ValidatePassword value)? validatePassword,
    TResult Function(ValidateConfirmePassword value)? validateConfirmPassword,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SignUpEvent {
  factory SignUp(final String email, final String password,
      final String confirmPassword) = _$SignUp;

  String get email;
  String get password;
  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$SignUpCopyWith<_$SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}
