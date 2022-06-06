import 'package:e_commerse_app_uising_getx/res/storge/local_storge/local_storge.dart';
import 'package:e_commerse_app_uising_getx/res/storge/preference/prefs.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController animationController;

  RxBool isLogin = false.obs;

  RxString appLocale = "ar".obs;

  @override
  void onInit() async {
    super.onInit();
    animationController = AnimationController(vsync: this);
    Prefs.getThemeMode.then((value) => isDark.value = value);
    Prefs.getIsLogin.then((value) => isLogin.value = value);

    LocalStorage localeStorage = LocalStorage();
    appLocale.value  = await localeStorage.getSelectedLanguage;
    Get.updateLocale(Locale(appLocale.value ));
    update();
  }

  RxBool isDark = false.obs;

  void changeLanguage(String lang){
    LocalStorage localeStorage = LocalStorage();
    if(appLocale.value  == lang){
      return;
    }
    if(lang == "ar"){
      localeStorage.setSelectedLanguage("ar");
    }else if(lang == "en"){
      localeStorage.setSelectedLanguage("en");
    }
    update();
  }
}
