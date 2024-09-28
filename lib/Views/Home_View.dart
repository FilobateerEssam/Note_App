import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/AddNote_BottomSheet.dart';
import 'package:note_app/Views/Widgets/Custom_NoteItem.dart';
import 'package:note_app/Views/Widgets/Custom_appBar.dart';
import 'package:note_app/Views/Widgets/Notes_ViewBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor:Color.fromARGB(255, 57, 57, 57),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ) ,
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          backgroundColor: const Color.fromARGB(255, 83, 205, 238),
          child: Icon(Icons.add),
          shape: CircleBorder(),
        ),
        body: NotesViewBody());
  }
}
