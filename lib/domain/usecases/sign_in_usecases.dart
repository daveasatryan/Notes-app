import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/data/utilities/models/sign_in/sign_in_model.dart';

@injectable
class SignInUsecases {
  final FirebaseRepository repositoryImp;
  SignInUsecases({required this.repositoryImp});

  Future<void> call(SignInModel signInModel) =>
      repositoryImp.signIn(signInModel);
}
