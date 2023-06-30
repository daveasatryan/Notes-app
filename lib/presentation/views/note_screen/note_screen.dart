import 'package:flutter/material.dart';
import 'package:product_app/domain/entities/note_entity.dart';
import 'package:product_app/widgets/base/base_state.dart';

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
      body: Container(
        child: Center(
          child: Text(note.note ?? ''),
        ),
      ),
    );
  }
}
