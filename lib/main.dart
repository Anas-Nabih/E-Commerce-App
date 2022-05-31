 import 'package:e_commerse_app_uising_getx/core/helper/binding.dart';
import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/dark_theme_style.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/llight_theme_style.dart';
 import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:e_commerse_app_uising_getx/view/splash/binding.dart';
import 'package:e_commerse_app_uising_getx/view/splash/splash.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({Key key}) : super(key: key);

    // _getThemeStatus() async {
    //   var _isLight = _prefs.then((SharedPreferences prefs) {
    //     return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    //   }).obs;
    //   _isLightTheme.value = await _isLight.value;
    //   Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);


  RxBool themeMode = false.obs ;

  bool getThemeStatus(){
    Prefs.getThemeMode.then((value) => themeMode.value = value);
    return themeMode.value;
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: SplashBinding(),
        theme: LightStyle.lightTheme(context),
        darkTheme: DarkStyle.darkTheme(context),
        themeMode: getThemeStatus() ? ThemeMode.light : ThemeMode.dark,
        // theme: ThemeData(
        //   fontFamily: "SourceSans"
        // ),
        home: SplashView(),
      ),
    );
  }
}
