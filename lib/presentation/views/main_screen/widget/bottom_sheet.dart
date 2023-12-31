import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/data/utilities/enums/open_bottom_sheet.dart';
import 'package:product_app/domain/entities/note_entity.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_bloc.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_event.dart';
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_state.dart';
import 'package:product_app/widgets/base/base_state.dart';
import 'package:product_app/widgets/custom/custom_button.dart';
import 'package:product_app/widgets/custom/custom_text_filed.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
    required this.userUid,
    required this.noteTextController,
    required this.headerTextController,
    required this.openBottomSheet,
    this.note,
  });

  final String userUid;
  final NoteEntity? note;
  final OpenBottomSheet openBottomSheet;
  final TextEditingController noteTextController;
  final TextEditingController headerTextController;

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget>
    with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    // widget.openBottomSheet == OpenBottomSheet.updateNote
    //     ? widget.noteTextController.text = widget.note?.note ?? ''
    //     : '';
    return BlocProvider(
      create: (context) =>
          context.read<BlocFactory>().create<BottomSheetBloc>(),
      child: BlocConsumer<BottomSheetBloc, BottomSheetState>(
        buildWhen: (previous, current) => current.buildWhen(),
        listenWhen: (previous, current) => current.listenWhen(),
        listener: (context, state) {
          state.whenOrNull(
              success: () {
                Navigator.pop(context);
              },
              loading: () => showLoading(),
              error: (msg) => showErrorDialog(msg: msg));
        },
        builder: (context, state) => state.maybeWhen(
          orElse: () => Container(),
          initial: () {
            hideLoading(context);
            return Container(
              decoration: BoxDecoration(
                color: context.colors.appSecondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.sp),
                  topLeft: Radius.circular(40.sp),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 25.sp),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: context.sizes.width * .27,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: context.colors.barrierColor,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    widget.openBottomSheet == OpenBottomSheet.addNote
                        ? context.strings.new_note
                        : context.strings.update_note,
                    style: context.fonts.latoMedium
                        .copyWith(fontSize: 30, color: colors.barrierColor),
                  ),
                  SizedBox(height: 15.sp),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.sp,
                          right: 20.sp,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomTextField(
                              initialValue: widget.openBottomSheet ==
                                      OpenBottomSheet.updateNote
                                  ? widget.note?.header
                                  : '',
                              showBorders: true,
                              borderColor: context.colors.yellowMainColor,
                              controller: widget.headerTextController,
                              hint: context.strings.header_hint,
                              labelText: context.strings.header_lable,
                              labelStyle: context.fonts.latoMedium
                                  .copyWith(fontSize: 18),
                              fillColor: context.colors.inputTextFiledColor,
                            ),
                            SizedBox(height: 20.sp),
                            CustomTextField(
                              initialValue: widget.openBottomSheet ==
                                      OpenBottomSheet.updateNote
                                  ? widget.note?.note
                                  : '',
                              maxLines: null,
                              minLines: 20,
                              contentPaddingVertical: 18,
                              showBorders: true,
                              borderColor: context.colors.yellowMainColor,
                              controller: widget.noteTextController,
                              hint: context.strings.new_note_hint,
                              labelText: context.strings.note,
                              labelStyle: context.fonts.latoMedium
                                  .copyWith(fontSize: 18),
                              fillColor: context.colors.inputTextFiledColor,
                            ),
                            const SizedBox(height: 20),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: CustomButton(
                                color: context.colors.yellowMainColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 10,
                                ),
                                isColorFilled: false,
                                onTap: widget.openBottomSheet ==
                                        OpenBottomSheet.addNote
                                    ? () => context
                                        .read<BottomSheetBloc>()
                                        .add(BottomSheetEvent.addNote(
                                          note: NoteEntity(
                                            note:
                                                widget.noteTextController.text,
                                            time: Timestamp.now(),
                                            uid: widget.userUid,
                                            header: widget
                                                .headerTextController.text,
                                          ),
                                        ))
                                    : () => context
                                        .read<BottomSheetBloc>()
                                        .add(BottomSheetEvent.updateNote(
                                          note: NoteEntity(
                                            noteId: widget.note?.noteId,
                                            note:
                                                widget.noteTextController.text,
                                            time: Timestamp.now(),
                                            uid: widget.userUid,
                                            header: widget
                                                .headerTextController.text,
                                          ),
                                        )),
                                child: Text(
                                  widget.openBottomSheet ==
                                          OpenBottomSheet.addNote
                                      ? context.strings.add
                                      : context.strings.update,
                                  textAlign: TextAlign.center,
                                  style: context.fonts.latoMedium.copyWith(
                                      color: context.colors.whiteColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
