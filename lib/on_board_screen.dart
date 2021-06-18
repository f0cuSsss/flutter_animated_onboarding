import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class LanguageItem {
  final id;
  final name;
  final path;

  LanguageItem({this.id, this.name, this.path});
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final pageController = new PageController();

  final languages = [
    LanguageItem(id: 1, name: 'English', path: 'assets/onboarding/us.svg'),
    LanguageItem(id: 2, name: 'German', path: 'assets/onboarding/germany.svg'),
    LanguageItem(id: 3, name: 'Russian', path: 'assets/onboarding/russia.svg'),
    LanguageItem(
        id: 4, name: 'Ukrainian', path: 'assets/onboarding/ukraine.svg'),
  ];
  final int selectedLanguage = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            // physics: NeverScrollableScrollPhysics(),
            children: [
              _renderLanguagePage(),
              _renderThemePage(),
              Container(
                child: Text('Slide 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderLanguagePage() {
    return Container(
      child: Column(
        children: [
          // Text(
          //   'Welcome!',
          //   style: TextStyle(
          //     color: Color(0xFF8093F1),
          //     // color: Color(0xFFB388EB),
          //     fontSize: 34,
          //     fontWeight: FontWeight.w800,
          //     height: 2,
          //     letterSpacing: 0.5,
          //   ),
          // ),
          Image.asset('assets/onboarding/language_globe.png'),
          // Text(
          //   'Pick a language to get started',
          //   style: TextStyle(
          //     color: Color(0xFF8093F1),
          //     fontSize: 20,
          //     fontWeight: FontWeight.w800,
          //     height: 1.5,
          //     letterSpacing: 0.5,
          //   ),
          // ),
          Expanded(
            child: Column(
              children: [
                // SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    _languageItem(languages[0]),
                    SizedBox(width: 15),
                    _languageItem(languages[1]),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    _languageItem(languages[2]),
                    SizedBox(width: 15),
                    _languageItem(languages[3]),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  color: Color(0xFF8093F1),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => print('Prev slide'),
                ),
              ),
              Expanded(child: Text('')),
              Expanded(
                child: IconButton(
                  iconSize: 30,
                  disabledColor: Colors.red,
                  color: Color(0xFF8093F1),
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _languageItem(LanguageItem item) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF8093F1).withOpacity(0.15),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 5),
            SvgPicture.asset(
              item.path,
              height: 45,
              width: 40,
            ),
            SizedBox(height: 10),
            Text(
              item.name,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
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
