import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SocialBTN extends StatelessWidget {
  final String text;
  final String img;
  const SocialBTN({
    this.text,
    this.img
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        border: Border.all(color: MColors.borderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(child:
      Row(

        children: [
          Image.asset(img,width: 6.w,),
          SizedBox(width: 6.w,),
          Text(text,style:
          TextStyle(color: Colors.black,fontSize: 13.sp),),
        ],
      )),
    );
  }
}