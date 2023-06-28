import 'package:injectable/injectable.dart';
import 'package:product_app/data/data_sources/firebase_data_sources.dart';
import 'package:product_app/data/utilities/models/sign_in/sign_in_model.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class FirebaseRepository {
  final FirebaseDataSources firebaseDataSources;
  FirebaseRepository({required this.firebaseDataSources});

  Future<void> signIn(SignInModel signInModel) async =>
      firebaseDataSources.signIn(signInModel);

  Future<void> addNewNote(NoteEntity note) async =>
      firebaseDataSources.addNewNote(note);

  Stream<List<NoteEntity>> getNotes(String uid) =>
      firebaseDataSources.getNotes(uid);
}
