import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

// ignore: must_be_immutable
class OnboardWelcomeScreen extends StatelessWidget {
  OnboardWelcomeScreen({this.pageController, this.pageCount});

  var pageController;
  var pageCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Image.asset(
            'assets/onboarding/people_temp.jpg',
            fit: BoxFit.fill,
            // width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              S.of(context).welcome_screen_title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF03002D),
                fontFamily: 'Roboto',
                fontSize: 36,
                fontWeight: FontWeight.w900,
                height: 1.2,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  S.of(context).welcome_screen_description,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          )),
          const SizedBox(height: 30),
          OnboardBottomBlock(
            pageController: pageController,
            pageCount: pageCount,
            curPage: 2,
          ),
        ],
      ),
    );
  }
}
