import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/models/note/note_model.dart';
import 'package:product_app/data/utilities/models/auth/auth_model.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class FirebaseDataSources {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseDataSources();

  Future<void> signIn(AuthUserModel signInModel) async =>
      await _auth.signInWithEmailAndPassword(
          email: signInModel.email, password: signInModel.password);

  Future<UserCredential?> signUp(AuthUserModel signUpModel) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: signUpModel.email, password: signUpModel.password);

    if (userCredential.user != null) {
      return userCredential;
    } else {
      return null;
    }
  }

  Future<void> signOut() async => await _auth.signOut();

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

  Stream<List<NoteEntity>> getNotes(String uid) async* {
    final noteCollectionRef =
        firestore.collection("users").doc(uid).collection("notes");

    final get = noteCollectionRef.snapshots().map((querySnap) {
      return querySnap.docs
          .map((docSnap) => NoteModel.fromSnapshot(docSnap))
          .toList();
    });
    yield* get;
  }

  Future<void> deleteNote(NoteEntity noteEntity) async {
    final noteCollectionRef =
        firestore.collection("users").doc(noteEntity.uid).collection("notes");

    noteCollectionRef.doc(noteEntity.noteId).get().then((note) {
      if (note.exists) {
        noteCollectionRef.doc(noteEntity.noteId).delete();
      }
      return;
    });
  }

  Future<void> updateNote(NoteEntity note) async {
    Map<String, dynamic> noteMap = <String, dynamic>{};
    final noteCollectionRef =
        firestore.collection("users").doc(note.uid).collection("notes");

    if (note.header != null) noteMap['header'] = note.header;
    if (note.note != null) noteMap['note'] = note.note;
    if (note.time != null) noteMap['time'] = note.time;

    noteCollectionRef.doc(note.noteId).update(noteMap);
  }
}
