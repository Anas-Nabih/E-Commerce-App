 import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{


  RxBool isDarkTheme = false.obs;

  bool getCurrentTheme(){
    Prefs.getThemeMode.then((value) => isDarkTheme.value = value);
    return isDarkTheme.value;
  }
  RxBool openNotification = true.obs;

}