import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

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
  ThemeItem selectedTheme = new ThemeItem(id: -1, name: '');

  final themes = [
    ThemeItem(
      id: 1,
      name: 'Light',
    ),
    ThemeItem(
      id: 2,
      name: 'Dark',
    ),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedTheme = themes[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Pick an application theme!',
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
          SizedBox(height: 60),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: List.generate(
                    themes.length,
                    (index) => _themeItem(themes[index]),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 30),
          // Text('You will be able to change the theme in the app settings.'),
          SizedBox(height: 30),
          OnboardBottomBlock(
            pageController: widget.pageController,
            pageCount: widget.pageCount,
            curPage: 1,
          ),
        ],
      ),
    );
  }

  Widget _themeItem(ThemeItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTheme = item;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Container(
          decoration: BoxDecoration(
            color:
                selectedTheme.id == item.id ? Color(0xFF03002D) : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                    color: selectedTheme.id == item.id
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
                  color: selectedTheme.id == item.id ? Color(0xFF6338F2) : null,
                ),
                child: Icon(
                  Icons.done,
                  color: selectedTheme.id == item.id
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
