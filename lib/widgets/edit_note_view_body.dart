import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_learn/widgets/custom_app_bar.dart';
import 'package:notes_learn/widgets/custom_text_form_field.dart';

import '../cubits/readNoteCubit/read_note_cubit.dart';
import '../models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel,});
 final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            const SizedBox(height: 14),

            CustomAppBar(
                onPressed: (){
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                title: 'Edit Note', icon: Icons.check),

            const SizedBox(height: 50),
             CustomTextFormField(
                onChanged: (value){
                  title = value;
                },
                hintText: widget.noteModel.title),
            const SizedBox(height: 16),
             CustomTextFormField(
                 onChanged: (value){
                   subTitle = value;
                 },
                hintText: widget.noteModel.subTitle, maxLines: 5),
          ],
        ),
      ),
    );
  }
}
