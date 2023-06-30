import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/enums/validation_enum.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/data/utilities/validation_utilities/validation_utilities.dart';
import 'package:product_app/domain/usecases/sign_up_usecase.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_event.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._signUpsecase)
      : super(const SignUpState.signUp(
          email: ValidationEnum.none,
          password: ValidationEnum.none,
          confirmPasswordValidation: ValidationEnum.none,
        )) {
    on<InitialSignUp>((event, emit) {
      emit(SignUpState.signUp(
          email: emailValidation,
          password: passwordValidation,
          confirmPasswordValidation: confirmPasswordValidation));
    });

    on<ValidateEmail>(
      (event, emit) {
        emailValidation = ValidationEnum.none;

        emit(
          SignUpState.signUp(
              email: emailValidation,
              password: passwordValidation,
              confirmPasswordValidation: confirmPasswordValidation),
        );
      },
    );

    on<ValidatePassword>(
      (event, emit) {
        passwordValidation = ValidationEnum.none;

        emit(
          SignUpState.signUp(
              email: emailValidation,
              password: passwordValidation,
              confirmPasswordValidation: confirmPasswordValidation),
        );
      },
    );
    on<ValidateConfirmePassword>(
      (event, emit) {
        confirmPasswordValidation = ValidationEnum.none;

        emit(
          SignUpState.signUp(
              email: emailValidation,
              password: passwordValidation,
              confirmPasswordValidation: confirmPasswordValidation),
        );
      },
    );
    on<SignUp>(
      (event, emit) async {
        final isEmailValid = ValidationUtils.isValidEmail(event.email);
        final isPasswordValid = ValidationUtils.isValidPassword(event.password);

        if (!isEmailValid) {
          emailValidation = ValidationEnum.invalid;
        } else {
          emailValidation = ValidationEnum.valid;
        }

        if (event.password.isEmpty) {
          passwordValidation = ValidationEnum.empty;
        } else if (!isPasswordValid) {
          passwordValidation = ValidationEnum.invalid;
        } else {
          passwordValidation = ValidationEnum.valid;
        }

        if (event.confirmPassword.isEmpty) {
          confirmPasswordValidation = ValidationEnum.empty;
        } else if (event.password != event.confirmPassword) {
          confirmPasswordValidation = ValidationEnum.invalid;
        } else {
          confirmPasswordValidation = ValidationEnum.valid;
        }

        emit(
          SignUpState.signUp(
              email: emailValidation,
              password: passwordValidation,
              confirmPasswordValidation: confirmPasswordValidation),
        );
        if (emailValidation != ValidationEnum.valid ||
            passwordValidation != ValidationEnum.valid ||
            confirmPasswordValidation != ValidationEnum.valid) return;

        emit(const SignUpState.loading());

        try {
          final userCredential = await _signUpsecase(
            AuthUserModel(
              email: event.email,
              password: event.password,
            ),
          );

          if (userCredential != null) {
            emit(const SignUpState.success());
          }
        } on FirebaseAuthException catch (e) {
          emit(SignUpState.error(msg: e.message ?? 'Opps! error'));
        }
      },
    );
  }

  final SignUpUsecases _signUpsecase;
  ValidationEnum emailValidation = ValidationEnum.none;
  ValidationEnum passwordValidation = ValidationEnum.none;
  ValidationEnum confirmPasswordValidation = ValidationEnum.none;
}
