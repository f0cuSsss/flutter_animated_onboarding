import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';

class ThemeItem {
  final id;
  final name;

  ThemeItem({this.id, this.name});
}

class OnboardThemeScreen extends StatefulWidget {
  OnboardThemeScreen({Key? key, this.pageController}) : super(key: key);

  var pageController;

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
      padding: const EdgeInsets.only(bottom: 20, top: 70, left: 30, right: 30),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Text(
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
          SizedBox(height: 60),
          Expanded(
            child: ScrollConfiguration(
              behavior: NoneScrollBehavior(),
              child: ListView(
                children: List.generate(
                  themes.length,
                  (index) => _themeItem(themes[index]),
                ),
              ),
            ),
          ),
          // SizedBox(height: 30),
          // Text('You will be able to change the theme in the app settings.'),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NEED TO REFACTOR!!!
              Expanded(
                child: Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Color(0xFF6338F2),
                  ),
                  padding: EdgeInsets.all(10),
                  child: IconButton(
                    iconSize: 24,
                    color: Color(0xFF8093F1),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        (widget.pageController as PageController).previousPage(
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeInToLinear,
                    ),
                  ),
                ),
              ),
              Expanded(child: Text('')),
              Expanded(
                child: Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Color(0xFF6338F2),
                  ),
                  padding: EdgeInsets.all(10),
                  child: IconButton(
                    iconSize: 24,
                    // iconSize: 34,
                    // color: Colors.black.withOpacity(0.7),
                    // color: Color(0xFF8093F1),
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      // color: Colors.black.withOpacity(0.7),
                    ),
                    onPressed: selectedTheme.id != -1
                        ? () {
                            widget.pageController.nextPage(
                              duration: const Duration(milliseconds: 350),
                              curve: Curves.easeInToLinear,
                            );
                          }
                        : null,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
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
