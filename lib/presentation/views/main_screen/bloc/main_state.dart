import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_app/domain/entities/note_entity.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loading() = _$MainStateLoading;

  const factory MainState.success() = _$MainStateSuccess;

  const factory MainState.signOut() = _$MainStateSignOut;

  const factory MainState.note({required List<NoteEntity> notes}) =
      _$MainStateNote;

  const factory MainState.error({
    required String msg,
  }) = _$MainStateError;
}

extension MainStateExt on MainState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        signOut: () => false,
        note: (_) => true,
      );

  bool listenWhen() => !buildWhen();
}
