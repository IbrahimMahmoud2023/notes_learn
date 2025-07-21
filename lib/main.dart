import 'package:flutter/material.dart';
import 'package:notes_learn/views/notes_view.dart';

void main() {
  runApp(const NotesLearn());
}

class NotesLearn extends StatelessWidget {
  const NotesLearn({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         brightness: Brightness.dark,
        fontFamily: 'Poppins',

      ),
      home: NotesView(),

    );
  }
}

