import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_welcome_screen/behaviors/NoneScrollBehavior.dart';
import 'package:flutter_welcome_screen/screens/onboard/onboard_bottom_block.dart';

import 'package:flutter_welcome_screen/generated/l10n.dart';

// ignore: must_be_immutable
class OnboardGettingStartedScreen extends StatefulWidget {
  OnboardGettingStartedScreen({this.pageController, this.pageCount});

  var pageController;
  var pageCount;

  @override
  State<OnboardGettingStartedScreen> createState() =>
      _OnboardGettingStartedScreenState();
}

class _OnboardGettingStartedScreenState
    extends State<OnboardGettingStartedScreen> {
  bool isTermsAndPoliticsAccepted = false;
  late var context;

  void getStartedHandler() {
    if (!isTermsAndPoliticsAccepted) return;
    print('Get started button clicked!');
    // print(S.of(this.context).func_first_screen_description);
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Theme.of(this.context).colorScheme.secondary;
  }

  void _privacyPolicyModal() {
    final size = MediaQuery.of(this.context).size;
    final theme = Theme.of(this.context);
    EasyDialog(
      width: size.width * 0.9,
      height: size.height * 0.8,
      cardColor: theme.backgroundColor,
      contentList: [
        Expanded(
          child: ScrollConfiguration(
            behavior: NoneScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      S.of(this.context).terms_of_use_title,
                      style: theme.textTheme.headline1?.copyWith(fontSize: 18),
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    S.of(this.context).terms_of_use_text,
                    textScaleFactor: 1.1,
                    textAlign: TextAlign.start,
                    style: theme.textTheme.headline4?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ).show(context);
  }

  void _termsOfUseModal() {
    final size = MediaQuery.of(this.context).size;
    final theme = Theme.of(this.context);
    EasyDialog(
      width: size.width * 0.9,
      height: size.height * 0.8,
      cardColor: theme.backgroundColor,
      contentList: [
        Expanded(
          child: ScrollConfiguration(
            behavior: NoneScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      S.of(this.context).privacy_policy_title,
                      style: theme.textTheme.headline1?.copyWith(fontSize: 18),
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    S.of(this.context).privacy_policy_text,
                    textScaleFactor: 1.1,
                    textAlign: TextAlign.start,
                    style: theme.textTheme.headline4?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = S.of(context);
    this.context = context;
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 5, left: 5, right: 5),
      // bottom: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          Image.asset(
            'assets/onboarding/getting_started.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          // const Expanded(child: ),
          const SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                localization.getstarted_screen_title,
                textAlign: TextAlign.center,
                style: theme.textTheme.headline1,
              ),
            ),
          ),
          _privacyPolicy(localization, theme),
          // const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              splashColor: isTermsAndPoliticsAccepted
                  ? Colors.black12
                  : Colors.transparent,
              highlightColor: isTermsAndPoliticsAccepted
                  ? theme.colorScheme.secondary.withOpacity(0.8)
                  : Colors.transparent,
              onTap: getStartedHandler,
              child: Ink(
                decoration: BoxDecoration(
                  color: isTermsAndPoliticsAccepted
                      ? theme.colorScheme.secondary
                      : theme.colorScheme.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.secondary.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    localization.getstarted_screen_btn_text,
                    style: TextStyle(
                      color: theme.colorScheme.onSecondary,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // const Expanded(child: SizedBox(height: 10)),
          Expanded(child: const SizedBox(height: 10)),
          OnboardBottomBlock(
            pageController: widget.pageController,
            pageCount: widget.pageCount,
            curPage: 7,
          ),
        ],
      ),
    );
  }

  Widget _privacyPolicy(S localization, theme) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Checkbox(
            checkColor: theme.colorScheme.onSecondary,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: isTermsAndPoliticsAccepted,
            onChanged: (bool? value) {
              setState(() {
                isTermsAndPoliticsAccepted = value!;
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text:
                          localization.getstarted_screen_privacy_policy_text_p1,
                      style: theme.textTheme.headline4,
                    ),
                    new TextSpan(
                      text:
                          localization.getstarted_screen_privacy_policy_text_p2,
                      style: theme.textTheme.headline4
                          ?.copyWith(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => _termsOfUseModal(),
                    ),
                    new TextSpan(
                      text:
                          localization.getstarted_screen_privacy_policy_text_p3,
                      style: theme.textTheme.headline4,
                    ),
                    new TextSpan(
                      text:
                          localization.getstarted_screen_privacy_policy_text_p4,
                      style: theme.textTheme.headline4
                          ?.copyWith(color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => _privacyPolicyModal(),
                    ),
                    new TextSpan(
                      text:
                          localization.getstarted_screen_privacy_policy_text_p5,
                      style: theme.textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
