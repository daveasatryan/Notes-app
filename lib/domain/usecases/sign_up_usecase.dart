import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';

@injectable
class SignUpUsecases {
  final FirebaseRepository repositoryImp;
  SignUpUsecases({required this.repositoryImp});

  Future<UserCredential?> call(AuthUserModel signUpModel) =>
      repositoryImp.signUp(signUpModel);
}
