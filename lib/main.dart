import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_welcome_screen/generated/l10n.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'IBM Plex Sans'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('de', 'DE'),
        const Locale('ru', 'RU'),
        const Locale('uk', 'UA'),
      ],
      home: OnBoardScreen(),
    ),
  );
}

  // ========= DARK THEME ==========
  // #15131C - background
  // #1F1E27 - secondary


  // ========= NIGHT BLUE THEME ========
  // #0E314F - background
  // #2147A1 - secondary
  // #286AA8 - third