import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';

class DarkStyle{
  static ThemeData darkTheme(BuildContext context){
    return ThemeData(
        scaffoldBackgroundColor: MColors.darkScaffoldBackGroundColor,
        canvasColor: Colors.transparent,
        colorScheme: ColorScheme(
           brightness: Brightness.dark,
          primary: MColors.darkScaffoldBackGroundColor,
          onPrimary: MColors.darkScaffoldBackGroundColor,
          secondary: MColors.darkScaffoldBackGroundColor,
          onSecondary: MColors.darkScaffoldBackGroundColor,
          error: MColors.darkScaffoldBackGroundColor,
          onError: MColors.darkScaffoldBackGroundColor,
          background: MColors.darkScaffoldBackGroundColor,
          onBackground: MColors.darkScaffoldBackGroundColor,
          surface: MColors.darkScaffoldBackGroundColor,
          onSurface: MColors.darkScaffoldBackGroundColor,
          onPrimaryContainer: MColors.darkScaffoldBackGroundColor,

        ),
        backgroundColor:MColors.darkScaffoldBackGroundColor,
        primaryColorDark: MColors.darkScaffoldBackGroundColor,


        accentColor: Colors.red,
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amber,
          disabledColor: Colors.red,
        ));
  }
}