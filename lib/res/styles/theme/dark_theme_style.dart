import 'package:flutter/material.dart';

class DarkStyle{
  static ThemeData darkTheme(BuildContext context){
    return ThemeData(
        accentColor: Colors.red,
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amber,
          disabledColor: Colors.grey,
        ));
  }
}