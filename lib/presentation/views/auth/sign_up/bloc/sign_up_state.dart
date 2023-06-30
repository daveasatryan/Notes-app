import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/data/utilities/enums/validation_enum.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.loading() = _$SignUpStateLoading;

  const factory SignUpState.success() = _$SignUpStateSuccess;

  const factory SignUpState.error({
    required String msg,
  }) = _$SignUpStateError;

  const factory SignUpState.signUp({
    required ValidationEnum email,
    required ValidationEnum password,
    required ValidationEnum confirmPasswordValidation,
  }) = _$SignUpStateSignUp;
}

extension SignUpStateExt on SignUpState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        signUp: (_, __, ___) => true,
      );

  bool listenWhen() => !buildWhen();
}
