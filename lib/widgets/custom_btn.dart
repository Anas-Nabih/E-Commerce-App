import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBTN extends StatelessWidget {
  final String text;
  final Function onTapped;
  const CustomBTN({
    this.text,this.onTapped
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped ?? (){},
      child: Container(
        height: 7.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: MColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(child:
        Text(text,style:
        TextStyle(color: Colors.white,fontSize: 13.sp),)),
      ),
    );
  }
}