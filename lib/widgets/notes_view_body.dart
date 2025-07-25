import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_learn/widgets/custom_app_bar.dart';
import '../cubits/readNoteCubit/read_note_cubit.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CustomAppBar(
          title: 'Notes',
          icon: Icons.search,
        ),

        Expanded(child: NotesListView()),
      ],
    );
  }
}
