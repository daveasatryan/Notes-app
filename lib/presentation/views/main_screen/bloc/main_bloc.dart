import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/domain/usecases/delete_note_usecase.dart';
import 'package:product_app/domain/usecases/get_notes_usecase.dart';
import 'package:product_app/domain/usecases/sign_out_usecase.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_event.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    this.getNotesUseCase,
    this.deleteNoteUseCase,
    this.signOutUsecases,
  ) : super(const MainState.note(notes: [])) {
    on<GetNotes>((event, emit) async {
      try {
        final getNotes = getNotesUseCase.call(event.uid);
        await emit.forEach(
          getNotes,
          onData: (data) => MainState.note(notes: data),
          onError: (error, stackTrace) => const MainState.error(msg: "errorrr"),
        );
      } on SocketException catch (_) {
        emit(const MainState.error(msg: 'error'));
      }
    });

    on<DeleteNotes>((event, emit) async {
      try {
        await deleteNoteUseCase.call(event.noteEntity);
        emit(const MainState.loading());
      } catch (_) {
        emit(const MainState.error(msg: 'error'));
      }
    });

    on<SignOut>((event, emit) async {
      try {
        await signOutUsecases();

        if (_auth.currentUser == null) {
          emit(const MainState.signOut());
        }
      } on FirebaseAuthException catch (e) {
        emit(MainState.error(msg: e.message ?? 'Opps! error'));
      }
    });
  }

  final GetNotesUseCase getNotesUseCase;
  final DeleteNoteUseCase deleteNoteUseCase;
  final SignOutUsecases signOutUsecases;
  final FirebaseAuth _auth = FirebaseAuth.instance;
}
