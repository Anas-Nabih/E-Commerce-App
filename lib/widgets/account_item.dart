import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:sizer/sizer.dart';

class AccountItem extends StatelessWidget {
  final String title, image;
  final bool isEnd;
  const AccountItem({
    this.title,this.image,this.isEnd = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        children: [
          Image.asset("assets/images/edit-button1.png",width: 5.w,),
          SizedBox(width: 5.w,),
          CustomText(text: title,fontSize: 15.sp,fontWeight: FontWeight.w400,),
          Spacer(),
          isEnd ?  Container() : Icon(Icons.arrow_forward_ios,size: 4.w,)
        ],
      ),
    );
  }
}