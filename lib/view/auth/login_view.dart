import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/view/auth/sign_in_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_btn.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text_form_field.dart';
import 'package:e_commerse_app_uising_getx/widgets/social_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginView extends GetView<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthViewModel viewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 4.h),
        padding: EdgeInsets.only(top: 6.h, left: 6.w, right: 6.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 54.h,
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Get.theme.brightness == Brightness.light
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.transparent,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 0))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () => Get.to(SignInView()),
                            child: Text(
                              "sign in",
                              style: TextStyle(
                                  fontSize: 14.sp, color: MColors.primaryColor),
                            )),
                      ],
                    ),
                    Text(
                      "Sign in to continue",
                      style: TextStyle(
                          color: MColors.hintColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                              labelTitle: "Email",
                              hintText: "user@gemai.com",
                              onSave: (val) => controller.email.value = val,
                              onChanged: (val) => controller.email.value = val,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            CustomTextFormField(
                              labelTitle: "Password",
                              hintText: "********",
                              obscure: controller.visiblePassword.value,
                              hasSuffix: true,
                              onSuffixTapped: ()=> controller.visiblePassword.value = !controller.visiblePassword.value,
                              iconData: controller.visiblePassword.value ? Icons.visibility:Icons.visibility_off ,
                              onSave: (val) => controller.password.value = val,
                              onChanged: (val) => controller.password.value = val,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 4.h,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text("Forget password?")),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomBTN(
                        text: "Sign in",
                        onTapped: () => print(
                            "email: ${controller.email.value} password: ${controller.password.value}")),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "-OR-",
                style: TextStyle(fontSize: 15.sp),
              ),
              SizedBox(
                height: 4.h,
              ),
              SocialBTN(
                text: "Sign in with Facebook",
                img: "assets/images/ic_facebook.png",
              ),
              SocialBTN(
                text: "Sign in with Google",
                img: "assets/images/ic_google.png",
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
