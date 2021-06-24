import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

class LanguageItem {
  final id;
  final name;
  final path;
  final code;
  final country;

  LanguageItem({this.id, this.name, this.path, this.code, this.country});
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
  int selectedLanguage = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      child: Column(
        children: [
          Text(
            S.of(context).language_screen_title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF03002D),
              fontFamily: 'Roboto',
              fontSize: 36,
              fontWeight: FontWeight.w900,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  children: [
                    _languageItem(LanguageItem(
                      id: 1,
                      name: S.of(context).language_screen_english,
                      path: 'assets/onboarding/us.svg',
                      code: 'en',
                      country: '',
                    )),
                    _languageItem(LanguageItem(
                      id: 2,
                      name: S.of(context).language_screen_german,
                      path: 'assets/onboarding/germany.svg',
                      code: 'de',
                      country: 'DE',
                    )),
                    _languageItem(LanguageItem(
                      id: 3,
                      name: S.of(context).language_screen_russian,
                      path: 'assets/onboarding/russia.svg',
                      code: 'ru',
                      country: 'RU',
                    )),
                    _languageItem(LanguageItem(
                      id: 4,
                      name: S.of(context).language_screen_ukrainian,
                      path: 'assets/onboarding/ukraine.svg',
                      code: 'uk',
                      country: 'UA',
                    )),
                  ],
                ),
              ),
            ),
          ),
          // Text('You will be able to change the language in the app settings.'),
          const SizedBox(height: 30),
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
          selectedLanguage = item.id;
          S.load(Locale(item.code, item.country));
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Container(
          decoration: BoxDecoration(
            color:
                selectedLanguage == item.id ? Color(0xFF03002D) : Colors.white,
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
                    color: selectedLanguage == item.id
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
                  color: selectedLanguage == item.id ? Color(0xFF6338F2) : null,
                ),
                child: Icon(
                  Icons.done,
                  color: selectedLanguage == item.id
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
