
 import 'package:e_commerse_app_uising_getx/res/storge/preference/const.dart';
import 'package:e_commerse_app_uising_getx/res/storge/preference/helper.dart';

class Prefs{

  static setIsLogin(bool value)=>
  PreferencesHelper.setBool(Const.IS_LOGIN, value);

  static Future<bool> get getIsLogin =>
  PreferencesHelper.getBool(Const.IS_LOGIN);

  // theme mode light return false, dark return true
  static setThemeMode(bool value) =>
     PreferencesHelper.setBool(Const.THEME_STATUS, value);

  static Future<bool> get getThemeMode =>
       PreferencesHelper.getBool(Const.THEME_STATUS);

  static setNotificationStatus(bool value) =>
     PreferencesHelper.setBool(Const.NOTIFICATION_STATUS, value);

  static Future<bool> get getNotificationStatus =>
       PreferencesHelper.getBool(Const.NOTIFICATION_STATUS);

  static setCurrentUser(String value)=>
      PreferencesHelper.setString(Const.CURRENT_USER, value);

  static Future<String> get getCurrentUser=>
      PreferencesHelper.getString(Const.CURRENT_USER);

  static setUserName(String value)=>
      PreferencesHelper.setString(Const.USER_NAME, value);

  static Future<String> get getUserName=>
      PreferencesHelper.getString(Const.USER_NAME);

  static setUserImage(String value)=>
      PreferencesHelper.setString(Const.USER_IMAGE, value);

  static Future<String> get getUserImage=>
      PreferencesHelper.getString(Const.USER_IMAGE);

  static setUserToken(String value)=>
      PreferencesHelper.setString(Const.USER_TOKEN, value);

  static Future<String> get getUserToken =>
      PreferencesHelper.getString(Const.USER_TOKEN);
}