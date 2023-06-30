import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/domain/entities/note_entity.dart';

part 'bottom_sheet_event.freezed.dart';

@freezed
class BottomSheetEvent with _$BottomSheetEvent {
  factory BottomSheetEvent.addNote({required NoteEntity note}) = AddNote;
  factory BottomSheetEvent.updateNote({required NoteEntity note}) = UpdateNote;
}
