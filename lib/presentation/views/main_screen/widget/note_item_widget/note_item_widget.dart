import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/data/utilities/date_utilities.dart';
import 'package:product_app/data/utilities/enums/open_bottom_sheet.dart';
import 'package:product_app/domain/entities/note_entity.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_bloc.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_event.dart';
import 'package:product_app/presentation/views/main_screen/widget/bottom_sheet.dart';
import 'package:product_app/widgets/base/base_stateless_mix.dart';

class NoteItemWidget extends StatelessWidget with BaseStatelessMixin {
  const NoteItemWidget({
    super.key,
    required TextEditingController headerTextController,
    required TextEditingController noteTextController,
    required this.user,
    required this.note,
  })  : _headerTextController = headerTextController,
        _noteTextController = noteTextController;

  final TextEditingController _headerTextController;
  final TextEditingController _noteTextController;
  final User? user;
  final NoteEntity note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => AppRoutes.goToNested(
      //   AppRoutes.noteRoute,
      //   arguments: note,
      // ),
      child: Card(
        margin: const EdgeInsets.all(7),
        elevation: 0,
        color: context.colors.barrierColor.withOpacity(0.1),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        note.header ?? '',
                        style: context.fonts.latoBlack.copyWith(
                          color: context.colors.black,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => showModalBottomSheet(
                        constraints: BoxConstraints(
                            maxHeight: context.sizes.height * .88),
                        useRootNavigator: true,
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return BottomSheetWidget(
                            note: note,
                            openBottomSheet: OpenBottomSheet.updateNote,
                            headerTextController: _headerTextController,
                            noteTextController: _noteTextController,
                            userUid: user?.uid ?? '',
                          );
                        },
                      ).then((value) {
                        _noteTextController.clear();
                        _headerTextController.clear();
                      }),
                      child: Icon(
                        Icons.edit,
                        color: context.colors.barrierColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  note.note ?? '',
                  style: context.fonts.latoRegular
                      .copyWith(color: context.colors.blackOpacityColor),
                  overflow: TextOverflow.clip,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateUtilities.printDateWith(
                      note.time ?? Timestamp.now())),
                  InkWell(
                    onTap: () {
                      context.read<MainBloc>().add(MainEvent.deleteNotes(
                            noteEntity: note,
                          ));
                      //delete note item
                    },
                    child: Icon(
                      Icons.delete,
                      color: context.colors.barrierColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
