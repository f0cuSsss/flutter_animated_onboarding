import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/global/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  late SharedPreferences prefs;
  late AppTheme _current;

  AppTheme get current => _current;

  ThemeNotifier() {
    _current = AppTheme.Light;
  }

  toggleTheme(AppTheme theme) {
    _current = theme;
    notifyListeners();
  }
}
