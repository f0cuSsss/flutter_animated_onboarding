import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/global/theme/app_theme.dart';
import 'package:flutter_welcome_screen/utils/Prefs.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme_id";
  late AppTheme _current;

  AppTheme get current => _current;

  ThemeNotifier() {
    _current = AppTheme.Light;
    _loadFromPrefs();
  }

  _loadFromPrefs() async {
    int id = await Prefs().getInt("theme_id");
    _current = AppTheme.values[id];
    notifyListeners();
  }

  _saveToPrefs() async {
    Prefs().saveToPrefs(key, _current.index);
  }

  toggleTheme(AppTheme theme) {
    _current = theme;
    _saveToPrefs();
    notifyListeners();
  }
}
