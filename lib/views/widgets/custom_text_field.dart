import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1,  this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?) ? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        // value!.isEmpty ! mean that I'm Sure that there are a Value
        // value?.isEmpty ?? true == if value == null
        if(value?.isEmpty ?? true   ){
          return 'Please enter $hint';
        }
        else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
