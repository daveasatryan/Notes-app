import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/domain/usecases/get_notes_usecase.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_event.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    this.getNotesUseCase,
  ) : super(const MainState.note(notes: [])) {
    on<GetNotes>((event, emit) {
      try {
        final getNotes = getNotesUseCase.call(event.uid).listen(
              (notes) async => add(MainEvent.getNotes(uid: event.uid)),
            );
        print(getNotes);
      } on SocketException catch (_) {
        emit(const MainState.error(errorCode: '', msg: 'error'));
      }
    });
  }

  final GetNotesUseCase getNotesUseCase;
}
