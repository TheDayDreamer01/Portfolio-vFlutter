import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";


class SettingsProvider with ChangeNotifier {
  
  SharedPreferences ? _prefs;

  SettingsProvider(){
    _initPreference();
  }

  Future<void> _initPreference() async {
    _prefs = await SharedPreferences.getInstance();
    return;
  } 


  bool getBoolPreference(String key) => _prefs?.getBool(key) ?? true;
  int getIntPreference(String key) => _prefs?.getInt(key) ?? 0;
  String getStringPreference(String key) => _prefs?.getString(key) ?? "";

  Future<void> setBoolPreference(String key, bool value) async {
    await _prefs?.setBool(key, value);
    return;
  }

  Future<void> setIntPreference(String key, int value) async {
    await _prefs?.setInt(key, value);
    return;
  }

  Future<void> setStringPreference(String key, String value) async {
    await _prefs?.setString(key, value);
    return;
  }

}