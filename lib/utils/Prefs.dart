import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static final Prefs _singleton = Prefs._internal();
  SharedPreferences? _prefs = null;

  factory Prefs() {
    return _singleton;
  }

  Prefs._internal();

  _initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future<int> getInt(key) async {
    await _initPrefs();
    return Future.value(_prefs?.getInt(key) ?? 0);
  }

  saveToPrefs(key, value) async {
    await _initPrefs();
    _prefs?.setInt(key, value);
  }
}
