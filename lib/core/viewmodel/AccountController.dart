 import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{


  RxBool isDarkTheme = false.obs;
  
  getThemeStatus()async{
    var _isDark = await Prefs.getThemeMode.then((value){
      return value != null ? value : false;
    }).obs;
  }

  changeThemeMode(){
    print (isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
    return isDarkTheme.value ? ThemeMode.dark : ThemeMode.light;
  }
  RxBool openNotification = true.obs;

}