import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/enums/validation_enum.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/data/utilities/validation_utilities/validation_utilities.dart';
import 'package:product_app/domain/usecases/sign_in_usecases.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_event.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._signInUsecase)
      : super(const SignInState.signIn(
          email: ValidationEnum.none,
          password: ValidationEnum.none,
        )) {
    on<InitialSignIn>((event, emit) {
      emit(const SignInState.signIn(
        email: ValidationEnum.none,
        password: ValidationEnum.none,
      ));
    });

    on<ValidateEmail>(
      (event, emit) {
        emailValidation = ValidationEnum.none;

        emit(
          SignInState.signIn(
            email: emailValidation,
            password: passwordValidation,
          ),
        );
      },
    );

    on<ValidatePassword>(
      (event, emit) {
        passwordValidation = ValidationEnum.none;

        emit(
          SignInState.signIn(
            email: emailValidation,
            password: passwordValidation,
          ),
        );
      },
    );
    on<SignIn>(
      (event, emit) async {
        final isEmailValid = ValidationUtils.isValidEmail(event.email);

        if (!isEmailValid) {
          emailValidation = ValidationEnum.invalid;
        } else {
          emailValidation = ValidationEnum.valid;
        }

        if (event.email.isEmpty) {
          emailValidation = ValidationEnum.empty;
        }

        if (event.password.isEmpty) {
          passwordValidation = ValidationEnum.empty;
        }

        if (emailValidation != ValidationEnum.valid ||
            passwordValidation != ValidationEnum.none) {
          emit(
            SignInState.signIn(
              email: emailValidation,
              password: passwordValidation,
            ),
          );
          return;
        }
        emit(const SignInState.loading());

        try {
          await _signInUsecase(
            AuthUserModel(
              email: event.email,
              password: event.password,
            ),
          );

          if (_auth.currentUser != null) {
            emit(const SignInState.success());
          }
        } on FirebaseAuthException catch (e) {
          emit(SignInState.error(msg: e.message ?? 'Opps! error'));
        }
      },
    );
  }

  ValidationEnum emailValidation = ValidationEnum.none;
  ValidationEnum passwordValidation = ValidationEnum.none;
  final SignInUsecases _signInUsecase;
  final FirebaseAuth _auth = FirebaseAuth.instance;
}
