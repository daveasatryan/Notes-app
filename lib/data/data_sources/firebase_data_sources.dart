import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/models/note/note_model.dart';
import 'package:product_app/data/utilities/models/sign_in/sign_in_model.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class FirebaseDataSources {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseDataSources();

  Future<void> signIn(SignInModel signInModel) async =>
      await _auth.signInWithEmailAndPassword(
          email: signInModel.email, password: signInModel.password);

  Future<void> addNewNote(NoteEntity noteEntity) async {
    final noteCollectionRef =
        firestore.collection("users").doc(noteEntity.uid).collection("notes");

    final noteId = noteCollectionRef.doc().id;

    noteCollectionRef.doc(noteId).get().then(
      (note) {
        final newNote = NoteModel(
          uid: noteEntity.uid,
          noteId: noteId,
          header: noteEntity.header,
          note: noteEntity.note,
          time: noteEntity.time,
        ).toDocument();

        if (!note.exists) {
          noteCollectionRef.doc(noteId).set(newNote);
        }
        return;
      },
    );
  }

  Stream<List<NoteEntity>> getNotes(String uid) {
    final noteCollectionRef =
        firestore.collection("users").doc(uid).collection("notes");

    final get = noteCollectionRef.snapshots().map((querySnap) {
      return querySnap.docs
          .map((docSnap) => NoteModel.fromSnapshot(docSnap))
          .toList();
    });
    return get;
  }
}
