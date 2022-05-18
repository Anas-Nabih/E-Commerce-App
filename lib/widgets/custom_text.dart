import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomText({this.text,this.fontWeight,this.color,this.fontSize}) ;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "",
        style:TextStyle(color: color ?? Colors.black,
            fontSize: fontSize ?? 14.sp,fontWeight:fontWeight ?? FontWeight.w500));
  }
}
