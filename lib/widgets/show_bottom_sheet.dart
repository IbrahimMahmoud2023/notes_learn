import 'package:flutter/material.dart';

import '../constant.dart';
import 'custom_button_sheet.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: const[
            SizedBox(height: 16),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 50),
            CustomButtonSheet(),
        
          ],
        ),
      ),
    );
  }
}





