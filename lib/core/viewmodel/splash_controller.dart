import 'dart:async';

import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Prefs.getThemeMode.then((value) => print(value));
    goToMainScreen();
  }

  goToMainScreen(){
    Timer(Duration(seconds: 4), ()=>Get.offAll(MainView()));
  }
}