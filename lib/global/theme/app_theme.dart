import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.green,
      fontFamily: 'IBM Plex Sans'),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[700],
      fontFamily: 'IBM Plex Sans')
};
