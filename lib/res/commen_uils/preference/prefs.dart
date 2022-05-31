import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/const.dart';
import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/helper.dart';

class Prefs{

  // theme mode light return true, dark return false
  static setThemeMode(bool value) =>
     PreferencesHelper.setBool(Const.THEME_STATUS, value);

  static Future<bool> get getThemeMode =>
       PreferencesHelper.getBool(Const.THEME_STATUS);

  static setNotificationStatus(bool value) =>
     PreferencesHelper.setBool(Const.NOTIFICATION_STATUS, value);

  static Future<bool> get getNotificationStatus =>
       PreferencesHelper.getBool(Const.NOTIFICATION_STATUS);
}