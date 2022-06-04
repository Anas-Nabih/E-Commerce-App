import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController animationController;

  RxBool isLogin = false.obs;
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this);
    Prefs.getThemeMode.then((value) => isDark.value = value);
    Prefs.getIsLogin.then(
        (value) => isLogin.value = value);
  }


  RxBool isDark = false.obs;
}
