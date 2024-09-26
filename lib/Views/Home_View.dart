import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/Custom_NoteItem.dart';
import 'package:note_app/Views/Widgets/Custom_appBar.dart';
import 'package:note_app/Views/Widgets/Notes_ViewBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody()
      
    );
  }
}


