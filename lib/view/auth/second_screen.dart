import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthViewModel viewModel = Get.put(AuthViewModel());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
             () => (Text("hello")),
          ),
          RaisedButton(
              child: Text("Increment"),
              onPressed: () {

              }),
        ],
      ),
    );
  }
}
