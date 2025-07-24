import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

part 'read_note_state.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());

  fetchAllNotes(){
try {

    var notesBox = Hive.box<NoteModel>(kNotesBox);
   List<NoteModel> notes = notesBox.values.toList();
    emit(ReadNoteSuccess(notes));
  } catch (e) {
  emit( ReadNoteFailure(e.toString()));
  }
  }
}
