import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

class OnboardGettingStartedScreen extends StatelessWidget {
  OnboardGettingStartedScreen({this.pageController, this.pageCount});

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
            'assets/onboarding/getting_started.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          Expanded(child: SizedBox(height: 30)),
          Text(
            'Project',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 44,
              letterSpacing: 14,
              height: 2,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'title',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 44,
              letterSpacing: 6,
              height: 1.2,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () => print('Get started clicked!'),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color(0xFF6338F2),
              ),
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'Get started!',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: SizedBox(height: 30)),
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
