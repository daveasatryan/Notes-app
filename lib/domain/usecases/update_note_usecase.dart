import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class UpdateNoteUseCase {
  final FirebaseRepository repository;

  UpdateNoteUseCase({required this.repository});

  Future<void> call(NoteEntity note) async => repository.updateNote(note);
}
