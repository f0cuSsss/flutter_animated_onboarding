// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

class OnboardFunctionalSecondScreen extends StatelessWidget {
  OnboardFunctionalSecondScreen({this.pageController, this.pageCount});

  var pageController;
  var pageCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(children: [
      Positioned(
        top: 25,
        right: 5,
        child: GestureDetector(
          onTap: () => (pageController as PageController).animateToPage(
            pageCount - 1,
            duration: const Duration(milliseconds: 800),
            curve: Curves.decelerate,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              S.of(context).skip,
              style: theme.textTheme.headline5,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 5, left: 5, right: 5),
        child: Column(
          children: [
            Image.asset(
              'assets/onboarding/func_2.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                S.of(context).func_second_screen_title,
                textAlign: TextAlign.center,
                style: theme.textTheme.headline1,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ScrollConfiguration(
                behavior: NoneScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    S.of(context).func_second_screen_description,
                    style: theme.textTheme.headline4,
                  ),
                ),
              ),
            )),
            const SizedBox(height: 10),
            OnboardBottomBlock(
              pageController: pageController,
              pageCount: pageCount,
              curPage: 5,
            ),
          ],
        ),
      ),
    ]);
  }
}
