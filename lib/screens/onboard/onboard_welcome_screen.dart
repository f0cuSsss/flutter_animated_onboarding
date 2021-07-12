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
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Image.asset(
            'assets/onboarding/people_temp_wb.png',
            fit: BoxFit.fill,
            // width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              S.of(context).welcome_screen_title,
              textAlign: TextAlign.center,
              style: theme.textTheme.headline1,
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
                    style: theme.textTheme.headline4,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
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
