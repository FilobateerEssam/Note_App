import 'package:flutter/material.dart';
import 'package:note_app/Views/Home_View.dart';

void main(){
  runApp(Note_App());
}

class Note_App extends StatelessWidget {
  const Note_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}