import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';
import 'package:flutter_welcome_screen/utils/Prefs.dart';
import 'package:flutter_welcome_screen/widgets/select_list_button.dart';

class LanguageItem {
  final id;
  final name;
  final path;
  final code;
  final country;

  LanguageItem({
    required this.id,
    required this.name,
    required this.path,
    required this.code,
    required this.country,
  });
}

// ignore: must_be_immutable
class OnboardLanguageScreen extends StatefulWidget {
  OnboardLanguageScreen({Key? key, this.pageController, this.pageCount})
      : super(key: key);

  var pageController;
  var pageCount;

  @override
  State<OnboardLanguageScreen> createState() => _OnboardLanguageScreenState();
}

class _OnboardLanguageScreenState extends State<OnboardLanguageScreen> {
  int selectedLanguage = 0;
  String key = "language_id";

  List<LanguageItem> languages = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      languages = [
        LanguageItem(
          id: 0,
          name: S.of(context).language_screen_english,
          path: 'assets/onboarding/us.svg',
          code: 'en',
          country: '',
        ),
        LanguageItem(
          id: 1,
          name: S.of(context).language_screen_german,
          path: 'assets/onboarding/germany.svg',
          code: 'de',
          country: 'DE',
        ),
        LanguageItem(
          id: 2,
          name: S.of(context).language_screen_russian,
          path: 'assets/onboarding/russia.svg',
          code: 'ru',
          country: 'RU',
        ),
        LanguageItem(
          id: 3,
          name: S.of(context).language_screen_ukrainian,
          path: 'assets/onboarding/ukraine.svg',
          code: 'uk',
          country: 'UA',
        ),
      ];
    });
    loadLanguage();
  }

  loadLanguage() async {
    int id = await Prefs().getInt(key);
    setState(() {
      selectedLanguage = id;
    });
    S.load(Locale(languages[id].code, languages[id].country));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      child: Column(
        children: [
          Text(
            S.of(context).language_screen_title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  children: [
                    for (LanguageItem item in languages) _languageItem(item)
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
          Prefs().saveToPrefs(key, item.id);
          S.load(Locale(item.code, item.country));
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: SelectListButton(
          item: item,
          selectedId: selectedLanguage,
          withIcon: true,
        ),
      ),
    );
  }
}
