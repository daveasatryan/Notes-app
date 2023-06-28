import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:product_app/domain/entities/note_entity.dart';

class NoteModel extends NoteEntity {
  const NoteModel({
    final String? noteId,
    final String? note,
    final String? header,
    final Timestamp? time,
    final String? uid,
  }) : super(uid: uid, header: header, time: time, note: note, noteId: noteId);
  factory NoteModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return NoteModel(
      noteId: documentSnapshot.get('noteId'),
      note: documentSnapshot.get('note'),
      header: documentSnapshot.get('header'),
      uid: documentSnapshot.get('uid'),
      time: documentSnapshot.get('time'),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "uid": uid,
      "header": header,
      "time": time,
      "note": note,
      "noteId": noteId
    };
  }
}
