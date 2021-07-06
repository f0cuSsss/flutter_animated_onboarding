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
  // app background color
  backgroundColor: const Color(0xFFEFF3F8),
  brightness: Brightness.light,
  // title color text
  primaryColor: const Color(0xFF03002D),
  colorScheme: ColorScheme(
    // text color
    primary: const Color(0xFF03002D), // or Colors.black
    // text color
    primaryVariant: const Color(0xFFEFF3F8), // or Colors.white
    // accent color
    secondary: const Color(0xFF6338F2),
    secondaryVariant: Colors.white,
    // cards color
    surface: Colors.white,
    background: Colors.white,
    error: const Color(0xFFC62B35),
    onPrimary: Colors.black,
    // accent color hover background
    onSecondary: Colors.white,
    // accent color hover background card color
    onSurface: const Color(0xFFEFF3F8),
    // accent color hover app background
    onBackground: Colors.black.withOpacity(0.6),
    onError: const Color(0xFFC62B35),
    brightness: Brightness.light,
  ),
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
// 0F0B20
ThemeData appThemeDark = ThemeData(
  // app background color
  backgroundColor: const Color(0xFF15131C),
  brightness: Brightness.light,
  // title color text
  primaryColor: const Color(0xFFEFF3F8),
  colorScheme: ColorScheme(
    // text color
    primary: const Color(0xFFEFF3F8), // or Colors.white
    // text color
    primaryVariant: const Color(0xFF03002D), // or Colors.black
    // accent color
    secondary: const Color(0xFF6EFFF0),
    secondaryVariant: Colors.white,
    // cards color
    surface: const Color(0xFF09041E), // Colors.black, //
    background: Colors.white,
    error: const Color(0xFFC62B35),
    onPrimary: Colors.black,
    // accent color hover background
    onSecondary: Colors.black.withOpacity(0.7),
    // accent color hover background card color
    onSurface: Colors.black.withOpacity(0.5),
    // accent color hover app background
    onBackground: Colors.white.withOpacity(0.6),
    onError: const Color(0xFFC62B35),
    brightness: Brightness.light,
  ),
  // ignore: prefer_const_constructors
  textTheme: TextTheme(
    // ignore: prefer_const_constructors
    headline1: TextStyle(
      // ignore: prefer_const_constructors
      color: const Color(0xFFFFF3F8),
      fontFamily: 'Roboto',
      fontSize: 36,
      fontWeight: FontWeight.w900,
      height: 1.5,
      letterSpacing: 0.5,
    ),
  ),
  fontFamily: 'IBM Plex Sans',
);
