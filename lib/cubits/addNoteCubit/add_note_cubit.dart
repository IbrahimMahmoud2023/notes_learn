import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_learn/models/note_model.dart';

import '../../constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote( NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
     await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
     emit( AddNoteFailure(e.toString()));
    }
  }
}
