import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  
  factory SignUpEvent.initial() = InitialSignUp;
  factory SignUpEvent.signUp(String email, String password) = SignUp;
}