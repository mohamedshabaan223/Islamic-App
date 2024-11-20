import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String code = 'en';
 bool get isDark => themeMode == ThemeMode.dark;
 String get backgroundImage => isDark ? 'bg' : 'bg3' ; 
 
  void changeTheme(ThemeMode  seleectedTheme ){
    themeMode= seleectedTheme;
   notifyListeners();
  }
  void changeLanguage( String selectedLanguage){
    code = selectedLanguage;
  notifyListeners();
}
}