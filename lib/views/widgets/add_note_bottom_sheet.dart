import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/addNote_Form.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // TODO: implement listener

          // Case Failure
          if (state is AddNoteFailure) {
            print("Failure ${state.errMsg}");
          }

          // Case Success
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          // make u can't deal with anything on the Screen while Loading
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child:  Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child:const SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ));
        },
      ),
    );
  }
}
