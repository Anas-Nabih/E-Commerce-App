import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomButton({
    this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        color: primaryColor,
        padding: EdgeInsets.all(14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: CustomText(
          text: text,
          color: Colors.white,
          alignment: Alignment.center,
          fontSize: 18,
        ));
  }
}
