import 'package:flutter/material.dart';
import 'package:music_player/themes/dark.dart';
import 'package:music_player/themes/light.dart';

class ThemeProvider extends ChangeNotifier {
  // Start darkmode
  ThemeData _themeData = darkMode;
  
  // get theme
  ThemeData get themeData =>  _themeData;

  // isdarkmode
  bool get isDarkMode => _themeData == darkMode;

  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //Update UI
    notifyListeners();
  }

  //toggle
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}