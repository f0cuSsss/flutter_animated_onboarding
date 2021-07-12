// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/global/theme/ThemeNotifier.dart';
import 'package:flutter_welcome_screen/global/theme/app_theme.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';
import 'package:flutter_welcome_screen/widgets/select_list_button.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int selectedTheme = 0;

  @override
  void initState() {
    super.initState();
    loadCurrentTheme();
  }

  void loadCurrentTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int theme_id = prefs.getInt('theme_id') ?? 0;
    setState(() {
      selectedTheme = theme_id;
    });
  }

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
                        id: 0,
                        name: S.of(context).theme_screen_light,
                      ),
                      AppTheme.Light,
                    ),
                    _themeItem(
                      ThemeItem(
                        id: 1,
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
          child: SelectListButton(
            item: item,
            selectedId: selectedTheme,
            withIcon: false,
          ),
        ),
      ),
    );
  }
}
