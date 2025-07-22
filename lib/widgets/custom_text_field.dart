import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLines =1});
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,

        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
    borderSide: BorderSide(
        color:color ?? Colors.white
    ),
  );
}