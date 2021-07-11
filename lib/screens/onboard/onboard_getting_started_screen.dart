import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

class OnboardGettingStartedScreen extends StatelessWidget {
  OnboardGettingStartedScreen({this.pageController, this.pageCount});

  var pageController;
  var pageCount;

  void getStartedHandler() {
    print('Get started button clicked!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Image.asset(
            'assets/onboarding/getting_started.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          const Expanded(child: SizedBox(height: 30)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              S.of(context).getstarted_screen_title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 44,
                letterSpacing: 14,
                height: 1.4,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              splashColor: Colors.black12,
              highlightColor: Color(0xFF3900ff).withOpacity(0.5),
              onTap: getStartedHandler,
              child: Ink(
                decoration: BoxDecoration(
                  color: const Color(0xFF6338F2),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  // color: const Color(0xFF6338F2),
                  border: Border.all(
                      width: 1.5, color: Color(0xFF3900ff).withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF3900ff).withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    S.of(context).getstarted_screen_btn_text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(child: SizedBox(height: 30)),
          OnboardBottomBlock(
            pageController: pageController,
            pageCount: pageCount,
            curPage: 7,
          ),
        ],
      ),
    );
  }
}
