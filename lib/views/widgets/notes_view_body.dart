import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';

import 'custom_app_bar.dart';
import 'note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
