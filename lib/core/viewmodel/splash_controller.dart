import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();

    print("anas");
    Prefs.getThemeMode.then((value) => print(value));
  }
}