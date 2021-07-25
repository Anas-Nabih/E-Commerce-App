import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {

  final String text;
  final String hintText;
  final Function onSave;
  final Function validator;
  final bool obscureText;

  CustomTextFormField({
    this.text,
    this.hintText,
    this.onSave,
    this.validator,
  this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            color: Colors.black,),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
            ),
            obscureText: obscureText,
            onSaved: onSave,
            validator: validator,
          )
        ],
      ),
    );
  }
}
