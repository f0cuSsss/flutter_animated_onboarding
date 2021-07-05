import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  @override
  ThemeState state = ThemeState(themeData: appThemeData[AppTheme.Light]);
  ThemeState get initialState =>
      ThemeState(themeData: appThemeData[AppTheme.Light]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      state.themeData = appThemeData[event.theme];
      yield state;
    }
  }
  // @override
  // ThemeState get initialState =>
  //     ThemeState(themeData: appThemeData[AppTheme.Light]);

  // ThemeBloc({required ThemeState initialState}) : super(initialState);

  // @override
  // Stream<ThemeState> mapEventToState(
  //   ThemeEvent event,
  // ) async* {
  //   if (event is ThemeChanged) {
  //     yield ThemeState(themeData: appThemeData[event.theme]);
  //   }
  // }
}
