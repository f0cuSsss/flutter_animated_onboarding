import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_language_screen.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_theme_screen.dart';

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
      backgroundColor: Color(0xFFEFF3F8),
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            // physics: NeverScrollableScrollPhysics(),
            children: [
              OnboardLanguageScreen(pageController: pageController),
              OnboardThemeScreen(pageController: pageController),
              Container(
                child: Text('Slide 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderThemePage() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/onboarding/us.svg',
            ),
          ),
        ],
      ),
    );
  }
}
