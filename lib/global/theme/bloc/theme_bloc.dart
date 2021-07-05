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
  ThemeState get initialState => ThemeState(themeData: appThemeLight);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    // yield ThemeState(themeData: themeData)
    if (event is ThemeChanged) {
      print(event);
      yield ThemeState(themeData: appThemeLight);
    }
  }
}
