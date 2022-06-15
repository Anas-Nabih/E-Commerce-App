import 'package:e_commerse_app_uising_getx/res/storge/preference/prefs.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{


  RxInt selectedLanguage =0.obs;
  RxBool isDarkTheme = false.obs;

  bool getCurrentTheme(){
    Prefs.getThemeMode.then((value) => isDarkTheme.value = value);
    return isDarkTheme.value;
  }
  RxBool openNotification = true.obs;
  RxBool positive = true.obs;

}