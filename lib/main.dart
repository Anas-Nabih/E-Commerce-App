import 'package:e_commerse_app_uising_getx/core/helper/binding.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/splash_controller.dart';
import 'package:e_commerse_app_uising_getx/res/commen_uils/languages/translation.dart';
import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/dark_theme_style.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/llight_theme_style.dart';
import 'package:e_commerse_app_uising_getx/view/splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  RxBool themeMode = false.obs;

  bool getThemeStatus() {
    Prefs.getThemeMode.then((value) => themeMode.value = value);
    return themeMode.value;
  }

  final c = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: Binding(),
        theme: LightStyle.lightTheme(context),
        darkTheme: DarkStyle.darkTheme(context),
        themeMode: Get.find<SplashController>().isDark.value
            ? ThemeMode.dark
            : ThemeMode.light,
        translations: Translation(),
        locale: Locale("en"),
        fallbackLocale: Locale("en"),
        home: SplashView(),
      ),
    );
  }
}
