import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'IBM Plex Sans'),
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