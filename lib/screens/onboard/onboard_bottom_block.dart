import 'package:flutter/material.dart';

class OnboardBottomBlock extends StatelessWidget {
  OnboardBottomBlock({this.pageController, this.pageCount, this.curPage});

  var pageController;
  var pageCount;
  var curPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // NEED TO REFACTOR!!!
            Expanded(
              child: Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  // color: curPage == 0 ? null : Color(0xFF8093F1),
                ),
                padding: EdgeInsets.all(10),
                child: IconButton(
                  iconSize: 24,
                  splashColor: (() {
                    return curPage == 0
                        ? Colors.transparent
                        : Color(0xFF8093F1);
                  }()),
                  icon: Icon(
                    Icons.arrow_back,
                    color: curPage == 0
                        ? Colors.transparent
                        : Colors.black.withOpacity(0.4),
                  ),
                  onPressed: curPage == 0
                      ? null
                      : () => (pageController as PageController).previousPage(
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
                  color: curPage == pageCount - 1
                      ? Color(0xFFEFF3F8)
                      : Color(0xFF6338F2),
                ),
                padding: EdgeInsets.all(10),
                child: IconButton(
                  splashColor: (() {
                    return curPage == pageCount - 1
                        ? Colors.transparent
                        : Color(0xFF8093F1);
                  }()),
                  icon: Icon(
                    Icons.arrow_forward,
                    color: curPage == pageCount - 1
                        ? Colors.transparent
                        : Colors.white,
                  ),
                  onPressed: curPage == pageCount - 1
                      ? null
                      : () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.easeInToLinear,
                          );
                        },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: List.generate(pageCount, (index) {
            return Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: curPage >= index
                      ? Color(0xFF6338F2)
                      : Color(0xFF6338F2).withOpacity(0.25),
                ),
                margin: EdgeInsets.only(right: 3),
                height: 5,
              ),
            );
          }),
        ),
      ],
    );
  }
}
