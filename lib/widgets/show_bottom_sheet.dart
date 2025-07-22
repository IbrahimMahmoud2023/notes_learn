import 'package:flutter/material.dart';

import 'custom_button_sheet.dart';
import 'custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  String ? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextFormField(
              onSaved: (value){
                title  =  value;
              },
              hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextFormField(
              onSaved: (value){
                subTitle  =  value;
              },
              hintText: 'Content', maxLines: 5),
          SizedBox(height: 50),
          CustomButtonSheet(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else {
                autoValidateMode = AutovalidateMode.always;
                setState((){} );
              }
            },
          )

        ],
      ),
    );
  }
}





