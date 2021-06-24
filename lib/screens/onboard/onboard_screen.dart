import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_functional_overview_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_functional_first_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_functional_second_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_functional_third_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_getting_started_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_language_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_theme_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_welcome_screen.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF0E314F), // dark
      backgroundColor: Color(0xFFEFF3F8), // light
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              OnboardLanguageScreen(
                  pageController: pageController, pageCount: 8),
              OnboardThemeScreen(pageController: pageController, pageCount: 8),
              OnboardWelcomeScreen(
                  pageController: pageController, pageCount: 8),
              OnboardFunctionalOverviewScreen(
                  pageController: pageController, pageCount: 8),
              OnboardFunctionalFirstScreen(
                  pageController: pageController, pageCount: 8),
              OnboardFunctionalSecondScreen(
                  pageController: pageController, pageCount: 8),
              OnboardFunctionalThirdScreen(
                  pageController: pageController, pageCount: 8),
              OnboardGettingStartedScreen(
                  pageController: pageController, pageCount: 8),
            ],
          ),
        ),
      ),
    );
  }
}
