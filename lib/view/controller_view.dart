import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/control_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/cart_view.dart';
import 'package:e_commerse_app_uising_getx/view/home_view.dart';
import 'package:e_commerse_app_uising_getx/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {

  Widget _currentScreen = HomeView();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get
          .find<AuthViewModel>()
          .user == null)
          ? LoginView()
          : GetBuilder<ControlViewModel>(
        init: Get.put(ControlViewModel()),
            builder: (controller)=> Scaffold(
        body: controller.currentScreen, bottomNavigationBar: bottomNavigationBar(),),
          );
    });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: Get.find(),
      builder: (controller) =>
          BottomNavigationBar(
            currentIndex: controller.navigatorValue,
            selectedItemColor: Colors.black,
            backgroundColor: Colors.grey.shade50,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text('Explore'),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      "assets/images/Icon_Explore.png", fit: BoxFit.contain,),
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text('Cart'),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      "assets/images/Icon_Cart.png", fit: BoxFit.contain,),
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text('Account'),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      "assets/images/Icon_User.png", fit: BoxFit.contain,),
                  ),
                  label: ''
              ),

            ],
            onTap: (index) {
              controller.changeSelectedValue(index);

            },
          ),
    );
  }
}
