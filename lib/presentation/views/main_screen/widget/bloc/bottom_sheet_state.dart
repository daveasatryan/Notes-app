import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_state.freezed.dart';

@freezed
class BottomSheetState with _$BottomSheetState {
  const factory BottomSheetState.loading() = _$BottomSheetStateLoading;
  const factory BottomSheetState.initial() = _$BottomSheetStateInitial;

  const factory BottomSheetState.success() = _$BottomSheetStateSuccess;

  const factory BottomSheetState.error({
    required String msg,
  }) = _$BottomSheetStateError;
}

extension BottomSheetStateExt on BottomSheetState {
  bool buildWhen() => when(
        loading: () => false,
        success: () => false,
        error: (_) => false,
        initial: () => true,
      );

  bool listenWhen() => !buildWhen();
}
