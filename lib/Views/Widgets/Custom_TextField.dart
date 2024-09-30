import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/Constatnt.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.maxlines = 1, required  this.hint});

  final int maxlines;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
    );
  }
}
