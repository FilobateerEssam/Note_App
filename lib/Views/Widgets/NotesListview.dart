import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/Custom_NoteItem.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  final data = const [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, i) {
          return CustomNoteitem();
        });
  }
}
