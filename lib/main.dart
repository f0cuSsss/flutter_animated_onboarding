import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'global/theme/app_theme.dart';
import 'global/theme/bloc/theme_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_welcome_screen/generated/l10n.dart';

// import 'global/theme/app_theme.dart';
// import 'global/theme/bloc/theme_bloc.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final w = ThemeBloc(initialState: appThemeData[AppTheme.Light]);
    // ThemeData state = appThemeData[AppTheme.Light];

    return BlocProvider<ThemeBloc>(
      create: (_) => ThemeBloc(),
      // create: (context) => appThemeData[AppTheme.Light],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: state.themeData,
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('en', ''),
        const Locale('de', 'DE'),
        const Locale('ru', 'RU'),
        const Locale('uk', 'UA'),
      ],
      home: OnBoardScreen(),
    );
  }
}



  // ========= DARK THEME ==========
  // #15131C - background
  // #1F1E27 - secondary


  // ========= NIGHT BLUE THEME ========
  // #0E314F - background
  // #2147A1 - secondary
  // #286AA8 - third

  // APP THEMES
  // https://resocoder.com/2019/08/09/switch-themes-with-flutter-bloc-dynamic-theming-tutorial-dark-light-theme/