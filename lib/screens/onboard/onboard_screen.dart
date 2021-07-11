import 'package:flutter/material.dart';

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
  int _pageCount = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              OnboardLanguageScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardThemeScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardWelcomeScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardFunctionalOverviewScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardFunctionalFirstScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardFunctionalSecondScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardFunctionalThirdScreen(
                  pageController: pageController, pageCount: _pageCount),
              OnboardGettingStartedScreen(
                  pageController: pageController, pageCount: _pageCount),
            ],
          ),
        ),
      ),
    );
  }
}
