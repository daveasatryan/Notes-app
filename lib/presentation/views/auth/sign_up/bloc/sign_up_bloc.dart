import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/domain/usecases/sign_up_usecase.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_event.dart';
import 'package:product_app/presentation/views/auth/sign_up/bloc/sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._signUpsecase) : super(const SignUpState.signUp()) {
    on<InitialSignUp>((event, emit) {
      emit(const SignUpState.signUp());
    });

    on<SignUp>(
      (event, emit) async {
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
}
