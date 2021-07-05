import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/global/theme/app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial());

  @override
  ThemeState get initialState =>
      // ThemeState(themeData: appThemeData[AppTheme.Dark] ?? appThemeDark);
      // ThemeState(themeData: appThemeData[AppTheme.Light] ?? appThemeLight);
      ThemeState(themeData: appThemeLight);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      // final ThemeState newTheme =
      //     ThemeState(themeData: appThemeData[event.theme] ?? appThemeLight);
      // newTheme.themeData = initialState.themeData;
      // newTheme.themeData = appThemeData[event.theme] ?? appThemeLight;
      // yield newTheme;
      print('[bloc] ${event.theme}');

      // switch (event.theme) {
      //   case AppTheme.Light:
      //     print('light');
      //     ThemeState newState = initialState;
      //     newState.themeData = appThemeData[event.theme] ?? appThemeLight;
      //     yield newState;
      //     break;
      //   case AppTheme.Dark:
      //     print('dark');
      //     ThemeState newState = initialState;
      //     initialState.themeData = appThemeData[event.theme] ?? appThemeDark;
      //     yield newState;
      //     break;
      // }

      // yield ThemeState(themeData: event.theme == AppTheme.Light ? appThemeLight : appThemeDark);
      // yield ThemeState(themeData: appThemeData[event.theme] ?? appThemeLight);
      yield ThemeState(themeData: appThemeData[event.theme] ?? appThemeDark);
    }
  }
}
