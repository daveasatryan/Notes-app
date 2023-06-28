import 'package:injectable/injectable.dart';
import 'package:product_app/data/repository/firebase_repository.dart';
import 'package:product_app/domain/entities/note_entity.dart';

@injectable
class GetNotesUseCase {
  final FirebaseRepository repository;

  GetNotesUseCase({required this.repository});

  Stream<List<NoteEntity>> call(String uid) => repository.getNotes(uid);
}
