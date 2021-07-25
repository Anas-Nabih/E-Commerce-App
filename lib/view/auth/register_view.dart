import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_social_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text_firm_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    final AuthViewModel _auth = AuthViewModel();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            Get.off(LoginView());
          },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomText(
                  text: "Sign Up,",
                  fontSize: 24,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: 'Sign Up to continue',
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  text: "Name",
                  hintText: "Enter your Name",
                  onSave: (val) {
                    controller.name = val;
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
                  height: 30,
                ),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    _formKey.currentState.save();
                    if (_formKey.currentState.validate()) {
                      controller.createUserWithEmailAndPassword();
                    }
                  },
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

