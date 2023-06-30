import 'package:flutter/material.dart';
import 'package:product_app/domain/entities/note_entity.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/widgets/base/base_state.dart';
import 'package:product_app/widgets/custom/app_bar_widget.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> with BaseStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object? object = ModalRoute.of(context)?.settings.arguments;
    final NoteEntity note = object as NoteEntity;

    return Scaffold(
      backgroundColor: colors.appSecondaryColor,
      appBar: AppBarWidget(
        centerTitle: true,
        hasBack: true,
        title: context.strings.note_details,
        titleStyle: fonts.latoRegular.copyWith(
          fontSize: 25,
          color: colors.appSecondaryColor,
        ),
        backgroundColor: colors.yellowMainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.strings.header_lable,
                style: fonts.latoRegular.copyWith(
                  fontSize: 20,
                  color: colors.black,
                ),
              ),
              Text(
                note.header ?? '',
                style: fonts.latoRegular.copyWith(
                  fontSize: 20,
                  color: colors.barrierColor,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                context.strings.note,
                style: fonts.latoRegular.copyWith(
                  fontSize: 20,
                  color: colors.black,
                ),
              ),
              Text(
                note.note ?? '',
                style: fonts.latoRegular.copyWith(
                  fontSize: 20,
                  color: colors.barrierColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
