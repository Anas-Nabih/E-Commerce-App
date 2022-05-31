import 'package:flutter/material.dart';

class LightStyle{
  static ThemeData lightTheme(BuildContext context){
    return ThemeData(
        accentColor: Colors.pink,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          disabledColor: Colors.grey,
        ));
  }
}