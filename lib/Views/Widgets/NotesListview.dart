import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/Custom_NoteItem.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 2 ,itemBuilder: (context,i){
      return CustomNoteitem();
    });
  }
}