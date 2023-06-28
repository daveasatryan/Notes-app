import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/domain/entities/note_entity.dart';

part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  factory MainEvent.getNotes({required String uid}) = GetNotes;
}
