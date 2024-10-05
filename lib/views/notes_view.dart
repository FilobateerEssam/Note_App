import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              builder: (context) {
                return  AddNoteBottomSheet();
              });
        },
        backgroundColor: const Color(0xff62FCD7),
        shape: const CircleBorder(),
        child: Icon(Icons.add ,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
