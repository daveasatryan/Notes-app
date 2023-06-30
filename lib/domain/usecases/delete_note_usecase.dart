import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class DeleteNoteUseCase {
  final FirebaseRepository repository;

  DeleteNoteUseCase({required this.repository});

  Future<void> call(NoteEntity note) async => repository.deleteNote(note);
}
