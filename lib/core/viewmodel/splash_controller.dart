import 'dart:async';

import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with SingleGetTickerProviderMixin{

  AnimationController animationController;
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this);
    Prefs.getThemeMode.then((value) => isDark.value = value);
   }

  RxBool isDark = false.obs;

}