import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/data_sources/firebase_data_sources.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class FirebaseRepository {
  final FirebaseDataSources firebaseDataSources;
  FirebaseRepository({required this.firebaseDataSources});

  Future<void> signIn(AuthUserModel signInModel) async =>
      firebaseDataSources.signIn(signInModel);

  Future<UserCredential?> signUp(AuthUserModel signUpModel) async =>
      firebaseDataSources.signUp(signUpModel);

Future<void> signOut() async =>
      firebaseDataSources.signOut();
  Future<void> addNewNote(NoteEntity note) async =>
      firebaseDataSources.addNewNote(note);

  Stream<List<NoteEntity>> getNotes(String uid) =>
      firebaseDataSources.getNotes(uid);

  Future<void> deleteNote(NoteEntity note) async =>
      firebaseDataSources.deleteNote(note);

  Future<void> updateNote(NoteEntity note) async =>
      firebaseDataSources.updateNote(note);
}
