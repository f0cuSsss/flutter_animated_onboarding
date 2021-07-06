import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/global/theme/ThemeNotifier.dart';
import 'package:provider/provider.dart';
import 'global/theme/app_theme.dart';
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

    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: notifier.current.index == 0 ? appThemeLight : appThemeDark,
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
        },
      ),
    );
    ;
  }
}



  // ========= LIGHT THEME ==========
  // #EFF3F8 - background
  // #1F1E27 - secondary ???
  // #03002D - primary
  // #1F1E27 - primary v2

  // ========= DARK THEME ==========
  // #15131C - background
  // #1F1E27 - secondary ???
  // #FFF3F8 - primary
  // #ACD7FF - primary v2
  // #6EFFF0 - accent color

  // ========= NIGHT BLUE THEME ========
  // #0E314F - background
  // #2147A1 - secondary ???
  // #286AA8 - third  ???
  // #ACD7FF - primary
  // #FFF3F8 - primary v2

  // APP THEMES
  // https://resocoder.com/2019/08/09/switch-themes-with-flutter-bloc-dynamic-theming-tutorial-dark-light-theme/