// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  factory SignInEvent.initial() = InitialSignIn;
  
  const factory SignInEvent.validateEmail(String email) = ValidateEmail;

  const factory SignInEvent.validatePassword(String password) =
      ValidatePassword;
  factory SignInEvent.signIn(String email, String password) = SignIn;
}
