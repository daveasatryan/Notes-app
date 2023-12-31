import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  factory SignUpEvent.initial() = InitialSignUp;

  const factory SignUpEvent.validateEmail(String email) = ValidateEmail;

  const factory SignUpEvent.validatePassword(String password) =
      ValidatePassword;

  const factory SignUpEvent.validateConfirmPassword(
      String confirmPassword, String password) = ValidateConfirmePassword;

  factory SignUpEvent.signUp(String email, String password, String confirmPassword) = SignUp;
}
