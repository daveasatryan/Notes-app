// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/data/utilities/enums/validation_enum.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = _$SignInStateLoading;

  const factory SignInState.success() = _$SignInStateSuccess;

  const factory SignInState.error({
    required String msg,
  }) = _$SignInStateError;

  const factory SignInState.signIn({
    required ValidationEnum email,
    required ValidationEnum password,
  }) = _$SignInStateSignIn;
}

extension SignInStateExt on SignInState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        signIn: (_,__) => true,
      );

  bool listenWhen() => !buildWhen();
}
