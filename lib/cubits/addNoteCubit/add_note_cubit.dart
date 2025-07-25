import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_learn/models/note_model.dart';

import '../../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color =  Color(0xFF9EBC9E);
  addNote( NoteModel note) async {
    try {
      note.color = color.value;
      emit(AddNoteLoading());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
     await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
     emit( AddNoteFailure(e.toString()));
    }
  }
}
