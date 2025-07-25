import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_learn/constant.dart';
import 'package:notes_learn/models/note_model.dart';
import 'package:notes_learn/simple_bloc_observer.dart';
import 'package:notes_learn/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
   await Hive.openBox<NoteModel>(kNotesBox);
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
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
    );
  }
}
