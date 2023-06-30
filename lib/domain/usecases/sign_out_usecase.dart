import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';

@injectable
class SignOutUsecases {
  final FirebaseRepository repositoryImp;
  SignOutUsecases({required this.repositoryImp});

  Future<void> call() =>
      repositoryImp.signOut();
}
