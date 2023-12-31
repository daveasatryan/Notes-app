import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';

@injectable
class SignInUsecases {
  final FirebaseRepository repositoryImp;
  SignInUsecases({required this.repositoryImp});

  Future<void> call(AuthUserModel signInModel) =>
      repositoryImp.signIn(signInModel);
}
