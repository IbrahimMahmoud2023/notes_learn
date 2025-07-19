import 'package:flutter/material.dart';
import 'package:notes_learn/views/home_view.dart';

void main() {
  runApp(const NotesLearn());
}

class NotesLearn extends StatelessWidget {
  const NotesLearn({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeView()
    );
  }
}

