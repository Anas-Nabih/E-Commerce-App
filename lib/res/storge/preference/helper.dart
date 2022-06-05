import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper{
  static Future<SharedPreferences> get prefs => SharedPreferences.getInstance();


  static setBool(String key, bool value) async{
    final p = await prefs;
    return p.setBool(key, value);
  }

  static Future<bool> getBool(String key) async {
    final p = await prefs;
    return p.getBool(key) ?? false;
  }

  static setInt(String key, int value) async{
    final p = await prefs;
    return p.setInt(key, value);
  }

  static Future<int> getInt(String key)async{
    final p = await prefs;
    return p.getInt(key);
  }

  static setString(String key, String value)async{
    final p = await prefs;
    return p.setString(key, value);
  }

  static Future<String> getString(String key) async{
    final p = await prefs;
    return p.getString(key);
  }
}