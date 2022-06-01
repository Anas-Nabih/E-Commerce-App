import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';

class LightStyle{
  static ThemeData lightTheme(BuildContext context){
    return ThemeData(
        accentColor: Colors.pink,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: MColors.lightScaffoldBackGroundColor,
          onPrimary: MColors.lightScaffoldBackGroundColor,
          secondary: MColors.lightScaffoldBackGroundColor,
          onSecondary: MColors.lightScaffoldBackGroundColor,
          error: MColors.lightScaffoldBackGroundColor,
          onError: MColors.lightScaffoldBackGroundColor,
          background: MColors.lightScaffoldBackGroundColor,
          onBackground: MColors.lightScaffoldBackGroundColor,
          surface: MColors.lightScaffoldBackGroundColor,
          onSurface: MColors.lightScaffoldBackGroundColor,
          onPrimaryContainer: MColors.lightScaffoldBackGroundColor,

        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          disabledColor: Colors.grey,

        ));
  }
}