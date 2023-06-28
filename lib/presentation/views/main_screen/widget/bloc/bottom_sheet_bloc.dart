import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/domain/usecases/add_new_note_usecase.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_event.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_state.dart';

@injectable
class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc(this.addNewNoteUseCase)
      : super(const BottomSheetState.initial()) {
    on<AddNote>((event, emit) async {
      print(event.note.note);
      print(event.note.noteId);
      print(event.note.uid);
      print(event.note.time);

      try {
        await addNewNoteUseCase.call(event.note);

        emit(const BottomSheetState.success());
      } on SocketException catch (error) {
        emit(BottomSheetState.error(msg: error.message));
      }
    });
  }

  final AddNewNoteUseCase addNewNoteUseCase;
}
