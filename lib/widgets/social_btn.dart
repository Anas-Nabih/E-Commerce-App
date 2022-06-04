import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        color: Get.theme.brightness == Brightness.dark ? Theme.of(context).backgroundColor: Colors.transparent,
        border: Border.all(color: Get.theme.brightness == Brightness.dark ? Colors.transparent: MColors.borderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(child:
      Row(

        children: [
          Image.asset(img,width: 6.w,),
          SizedBox(width: 6.w,),
          Text(text,style:Get.theme.textTheme.bodyText1),
        ],
      )),
    );
  }
}