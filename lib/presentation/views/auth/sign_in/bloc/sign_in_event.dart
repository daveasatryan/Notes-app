import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  factory SignInEvent.initial() = Initial;
  factory SignInEvent.signIn(String email, String password) = SignIn;
}
