import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/domain/usecases/sign_in_usecases.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_event.dart';
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._signInUsecase) : super(const SignInState.signIn()) {
    on<InitialSignIn>((event, emit) {
      emit(const SignInState.signIn());
    });

    on<SignIn>(
      (event, emit) async {
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

  final SignInUsecases _signInUsecase;
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
}
