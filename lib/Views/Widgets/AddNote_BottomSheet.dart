import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/Custom_TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
    const AddNoteBottomSheet({super.key});
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextfield(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextfield(
                hint: 'content',
                maxlines: 5,
              ),
            ],
          ),
      );
    }
  }