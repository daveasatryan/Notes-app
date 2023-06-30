import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/domain/usecases/add_new_note_usecase.dart';
import 'package:product_app/domain/usecases/update_note_usecase.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_event.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_state.dart';

@injectable
class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc(this.addNewNoteUseCase, this.updateNoteUseCase)
      : super(const BottomSheetState.initial()) {
    on<AddNote>((event, emit) async {
      try {
        await addNewNoteUseCase.call(event.note);

        emit(const BottomSheetState.success());
      }  catch (error) {
        emit(BottomSheetState.error(msg: error.toString()));
      }
    });

     on<UpdateNote>((event, emit) async {
      try {
        await updateNoteUseCase.call(event.note);

        emit(const BottomSheetState.success());
      } catch (error) {
        emit(BottomSheetState.error(msg: error.toString()));
      }
    });
  }

  final AddNewNoteUseCase addNewNoteUseCase;
  final UpdateNoteUseCase updateNoteUseCase;
}
