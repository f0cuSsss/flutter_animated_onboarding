import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

// ignore: must_be_immutable
class OnboardFunctionalFirstScreen extends StatelessWidget {
  OnboardFunctionalFirstScreen({this.pageController, this.pageCount});

  var pageController;
  var pageCount;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 25,
        right: 20,
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
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
        child: Column(
          children: [
            Image.asset(
              'assets/onboarding/func_1.jpg',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                S.of(context).func_first_screen_title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF03002D),
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  height: 1.5,
                  letterSpacing: 0.5,
                ),
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
                    S.of(context).func_first_screen_description,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            )),
            const SizedBox(height: 30),
            OnboardBottomBlock(
              pageController: pageController,
              pageCount: pageCount,
              curPage: 4,
            ),
          ],
        ),
      ),
    ]);
  }
}
