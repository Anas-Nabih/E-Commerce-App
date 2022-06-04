import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_btn.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class SignInView extends GetView<AuthViewModel>{
  final GlobalKey<FormState> _forKey = GlobalKey<FormState>();
  final viewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            height: 70.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
            margin: EdgeInsets.symmetric(horizontal: 6.w),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(-2, 3),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Form(
              key: _forKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Sign in",
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  CustomTextFormField(
                    labelTitle: "Name",
                    hintText: "Test User",
                    hasSuffix: true,
                    onChanged: (val)=>controller.userName.value = val,
                    onSave: (val)=>controller.userName.value = val,
                    validator: (val){
                      if(val.isEmpty){
                        return "please enter your name";
                      }
                    },
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomTextFormField(
                    labelTitle: "Email",
                    hintText: "User@gemail.com",
                    hasSuffix: true,
                      onChanged: (val)=>controller.email.value = val,
                      onSave: (val)=>controller.email.value = val,
                      validator: (val){
                        if(val.isEmpty){
                          return "please enter your email";
                        }
                      }
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomTextFormField(
                    labelTitle: "Password",
                    hintText: "********",
                    hasSuffix: true,
                      onChanged: (val)=>controller.password.value = val,
                      onSave: (val)=>controller.password.value = val,
                      validator: (val){
                        if(val.isEmpty){
                          return "please enter your password";
                        }else if(val.length < 6){
                          return "password should be 6 chars at least";
                        }
                      }
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomBTN(
                    text: "Sign in",
                    onTapped: (){
                      _forKey.currentState.save();
                      if(_forKey.currentState.validate()){
                        controller.createAccountWithEmailAndPassword();
                      }else{
                        Get.snackbar("Create Account Error", "All fields are required");
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
