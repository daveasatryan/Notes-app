import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/data/utilities/models/user/user_model.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = _$SignInStateLoading;

  const factory SignInState.success() =
      _$SignInStateSuccess;

  const factory SignInState.error({
    required String msg,
  }) = _$SignInStateError;

  const factory SignInState.logout({
    required String msg,
    required String errorCode,
  }) = _$SignInStateLogout;
  const factory SignInState.signIn() = _$SignInStateSignIn;
}

extension SignInStateExt on SignInState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        logout: (_, __) => false,
        signIn: () => true,
      );

  bool listenWhen() => !buildWhen();
}
