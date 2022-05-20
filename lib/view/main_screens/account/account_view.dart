import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/account_item.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class AccountView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 20.h,width: 20.h,
                    margin: EdgeInsets.only(top: 5.h),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Anas.jpg")
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: MColors.lightGreyColor,
                          offset: Offset(0,0),blurRadius: 4,spreadRadius: 2
                        )
                      ]
                    ),
                   ),
                  SizedBox(width: 4.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Anas Nabih",fontWeight: FontWeight.w400,fontSize: 18.sp,),
                      CustomText(text: "anas7nabih@gmail.com",color: MColors.hintColor,fontWeight: FontWeight.w400,fontSize: 12.sp,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8.h,),
              AccountItem(title: "Edit Profile",),
              AccountItem(title: "Shipping Address",),
              AccountItem(title: "Order history",),
              AccountItem(title: "Cards",),
              AccountItem(title: "Notifications",),
              AccountItem(title: "Log Out",isEnd: true,),
            ],
          ),
        ),
      ),

    );
  }
}

