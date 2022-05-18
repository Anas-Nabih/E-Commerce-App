import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_btn.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignInView extends GetView{
  final GlobalKey<FormState> _forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: ()=>Get.back(),
            child: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
      ),
      body: Center(
        child: Container(
          height: 70.h,width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
          margin: EdgeInsets.symmetric(horizontal: 6.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(-2,3),
                spreadRadius: 1,blurRadius: 8,
              )
            ]
          ),
          child: Form(
            key: _forKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Sign in",fontSize: 20.sp,fontWeight: FontWeight.w600,),
                SizedBox(height: 6.h,),
                CustomTextFormField(
                  labelTitle: "Name",
                  hintText: "Test User",
                ),
                SizedBox(height: 4.h,),
                CustomTextFormField(
                  labelTitle: "Email",
                  hintText: "User@gemail.com",
                ),
                SizedBox(height: 4.h,),
                CustomTextFormField(
                  labelTitle: "Password",
                  hintText: "********",
                ),
                SizedBox(height: 8.h,),
                CustomBTN(
                  text: "Sign in",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}