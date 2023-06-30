// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = _$SignInStateLoading;

  const factory SignInState.success() = _$SignInStateSuccess;

  const factory SignInState.error({
    required String msg,
  }) = _$SignInStateError;

  const factory SignInState.signIn() = _$SignInStateSignIn;
}

extension SignInStateExt on SignInState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        signIn: () => true,
      );

  bool listenWhen() => !buildWhen();
}
