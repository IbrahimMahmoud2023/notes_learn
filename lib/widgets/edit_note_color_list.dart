import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/note_model.dart';
import 'color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex ;

  @override
  void initState() {
    currentIndex  = kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
  NoteModel?  noteModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
                onTap: (){
                  widget.noteModel.color = kColors[index].value;
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index ,)),
          );
        },
      ),
    );
  }
}