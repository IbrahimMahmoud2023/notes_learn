import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/notes_view_body.dart';
import '../widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
            context: context,builder: (context) {
             return AddNoteBottomSheet();
            },
        );
      },
      child: Icon(FontAwesomeIcons.plus,size: 24,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NotesViewBody()
      ),
    );
  }
}



