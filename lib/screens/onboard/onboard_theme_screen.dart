import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/global/theme/ThemeNotifier.dart';
import 'package:flutter_welcome_screen/global/theme/app_theme.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';
import 'package:provider/provider.dart';

class ThemeItem {
  final id;
  final name;

  ThemeItem({this.id, this.name});
}

class OnboardThemeScreen extends StatefulWidget {
  OnboardThemeScreen({Key? key, this.pageController, this.pageCount})
      : super(key: key);

  var pageController;
  var pageCount;

  @override
  State<OnboardThemeScreen> createState() => _OnboardThemeScreenState();
}

class _OnboardThemeScreenState extends State<OnboardThemeScreen> {
  int selectedTheme = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              S.of(context).theme_screen_title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(height: 60),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: [
                    _themeItem(
                      ThemeItem(
                        id: 1,
                        name: S.of(context).theme_screen_light,
                      ),
                      AppTheme.Light,
                    ),
                    _themeItem(
                      ThemeItem(
                        id: 2,
                        name: S.of(context).theme_screen_dark,
                      ),
                      AppTheme.Dark,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Text('You will be able to change the theme in the app settings.'),
          const SizedBox(height: 30),
          OnboardBottomBlock(
            pageController: widget.pageController,
            pageCount: widget.pageCount,
            curPage: 1,
          ),
        ],
      ),
    );
  }

  Widget _themeItem(ThemeItem item, AppTheme theme) {
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, child) => GestureDetector(
        onTap: () {
          setState(() {
            selectedTheme = item.id;
          });
          notifier.toggleTheme(theme);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              color: selectedTheme == item.id
                  ? const Color(0xFF03002D)
                  : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 19,
                      color: selectedTheme == item.id
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    color: selectedTheme == item.id
                        ? const Color(0xFF6338F2)
                        : null,
                  ),
                  child: Icon(
                    Icons.done,
                    color: selectedTheme == item.id
                        ? Colors.white
                        : Colors.grey.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
