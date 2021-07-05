import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: appThemeLight,
  AppTheme.Dark: appThemeDark
};

ThemeData appThemeLight = ThemeData(
  backgroundColor: const Color(0xFFEFF3F8),
  brightness: Brightness.light,
  primaryColor: Color(0xFF03002D),
  // ignore: prefer_const_constructors
  textTheme: TextTheme(
    // ignore: prefer_const_constructors
    headline1: TextStyle(
      // ignore: prefer_const_constructors
      color: Color(0xFF03002D),
      fontFamily: 'Roboto',
      fontSize: 36,
      fontWeight: FontWeight.w900,
      height: 1.5,
      letterSpacing: 0.5,
    ),
  ),
  fontFamily: 'IBM Plex Sans',
);

ThemeData appThemeDark = ThemeData(
  backgroundColor: Colors.blueAccent,
  brightness: Brightness.dark,
  primaryColor: Colors.green,
  // ignore: prefer_const_constructors
  textTheme: TextTheme(
    // ignore: prefer_const_constructors
    headline1: TextStyle(
      // ignore: prefer_const_constructors
      color: Colors.deepPurpleAccent,
      fontFamily: 'Roboto',
      fontSize: 36,
      fontWeight: FontWeight.w900,
      height: 1.5,
      letterSpacing: 0.5,
    ),
  ),
  fontFamily: 'IBM Plex Sans',
);
