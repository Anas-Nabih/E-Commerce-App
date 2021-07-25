import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/auth/register_view.dart';
import 'package:e_commerse_app_uising_getx/view/auth/second_screen.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_social_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text_firm_field.dart';
import 'package:flutter/material.dart';
import 'package:e_commerse_app_uising_getx/constance.dart';
import 'package:get/get.dart';

class LoginView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel _auth = AuthViewModel();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome,",
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(RegisterView());
                      },
                      child: CustomText(
                        text: "Sign Up",
                        fontSize: 14,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'Sign in to continue',
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  text: "Email",
                  hintText: "Enter your email",
                  onSave: (val) {
                    controller.email = val;
                  },
                  validator: (val) {
                    if (val == null) {
                      print("error");
                    }
                  },
                  obscureText: false,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  text: "Password",
                  hintText: "Enter your password",
                  onSave: (val) {
                    controller.password = val;
                  },
                  validator: (val) {
                    if (val == null) {
                      print("Error");
                    }
                  },
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Forget Password?',
                  color: Colors.grey.shade500,
                  alignment: Alignment.topRight,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    _formKey.currentState.save();
                    if (_formKey.currentState.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                ),
                SizedBox(height: 30),
                CustomText(
                  text: '-OR-',
                  alignment: Alignment.center,
                  fontSize: 18,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomSocialButton(
                  text: 'Sign In with Facebook',
                  imageName: 'assets/images/facebook.png',
                  onPressed: () {
                    controller.facebookSignInMethod();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomSocialButton(
                  text: 'Sign In with Google',
                  imageName: 'assets/images/google.png',
                  onPressed: () {
                    controller.googleSignInMethod();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
