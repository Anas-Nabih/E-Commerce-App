 import 'package:e_commerse_app_uising_getx/core/helper/binding.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/dark_theme_style.dart';
import 'package:e_commerse_app_uising_getx/res/styles/theme/llight_theme_style.dart';
 import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:e_commerse_app_uising_getx/view/splash/splash.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: Binding(),
        theme: LightStyle.lightTheme(context),
        darkTheme: DarkStyle.darkTheme(context),
        themeMode: ThemeMode.light,
        // theme: ThemeData(
        //   fontFamily: "SourceSans"
        // ),
        home: SplashView(),
      ),
    );
  }
}
