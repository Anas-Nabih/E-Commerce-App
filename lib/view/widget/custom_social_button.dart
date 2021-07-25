import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomSocialButton extends StatelessWidget {

  final String text;
  final String imageName;
  final Function onPressed;

  const CustomSocialButton({
    this.text,
    this.imageName,
  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: FlatButton(onPressed: onPressed,
          child: Row(
            children: [
              Image.asset(imageName,width: 24,height: 24,),
              SizedBox(width: 90,),
              CustomText(text: text, fontSize: 16,)
            ],
          )),
    );
  }
}
