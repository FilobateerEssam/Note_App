import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Views/Widgets/Custom_appBar.dart';
import 'package:note_app/Views/Widgets/NotesListview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        Expanded(
          child: Noteslistview(),
        ),
      ],
    );
  }
}
