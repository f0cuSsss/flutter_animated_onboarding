import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

class LanguageItem {
  final id;
  final name;
  final path;

  LanguageItem({this.id, this.name, this.path});
}

class OnboardLanguageScreen extends StatefulWidget {
  OnboardLanguageScreen({Key? key, this.pageController, this.pageCount})
      : super(key: key);

  var pageController;
  var pageCount;

  @override
  State<OnboardLanguageScreen> createState() => _OnboardLanguageScreenState();
}

class _OnboardLanguageScreenState extends State<OnboardLanguageScreen> {
  LanguageItem selectedLanguage = new LanguageItem(id: -1, name: '', path: '');

  final languages = [
    LanguageItem(
      id: 1,
      name: 'English',
      path: 'assets/onboarding/us.svg',
    ),
    LanguageItem(
      id: 2,
      name: 'German',
      path: 'assets/onboarding/germany.svg',
    ),
    LanguageItem(
      id: 3,
      name: 'Russian',
      path: 'assets/onboarding/russia.svg',
    ),
    LanguageItem(
      id: 4,
      name: 'Ukrainian',
      path: 'assets/onboarding/ukraine.svg',
    ),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedLanguage = languages[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Text(
            'Choose a language, please!',
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
          SizedBox(height: 40),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  children: List.generate(
                    languages.length,
                    (index) => _languageItem(languages[index]),
                  ),
                ),
              ),
            ),
          ),
          // Text('You will be able to change the language in the app settings.'),
          SizedBox(height: 30),
          OnboardBottomBlock(
            pageController: widget.pageController,
            pageCount: widget.pageCount,
            curPage: 0,
          ),
        ],
      ),
    );
  }

  Widget _languageItem(LanguageItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = item;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Container(
          decoration: BoxDecoration(
            color: selectedLanguage.id == item.id
                ? Color(0xFF03002D)
                : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          child: Row(
            children: [
              SvgPicture.asset(
                item.path,
                height: 36,
                width: 36,
              ),
              const SizedBox(width: 35),
              Expanded(
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 19,
                    color: selectedLanguage.id == item.id
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  color:
                      selectedLanguage.id == item.id ? Color(0xFF6338F2) : null,
                ),
                child: Icon(
                  Icons.done,
                  color: selectedLanguage.id == item.id
                      ? Colors.white
                      : Colors.grey.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
