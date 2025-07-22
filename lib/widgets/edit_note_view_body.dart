import 'package:flutter/material.dart';
import 'package:notes_learn/widgets/custom_text_field.dart';

import 'custom_search_icon.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Edit Note', style: TextStyle(fontSize: 28)),
                Spacer(),
                CustomSearchIcon(icon: Icons.check),
              ],
            ),
            SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            const SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
