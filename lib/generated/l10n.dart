// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Choose a language, please!`
  String get language_screen_title {
    return Intl.message(
      'Choose a language, please!',
      name: 'language_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language_screen_english {
    return Intl.message(
      'English',
      name: 'language_screen_english',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get language_screen_german {
    return Intl.message(
      'German',
      name: 'language_screen_german',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get language_screen_russian {
    return Intl.message(
      'Russian',
      name: 'language_screen_russian',
      desc: '',
      args: [],
    );
  }

  /// `Ukrainian`
  String get language_screen_ukrainian {
    return Intl.message(
      'Ukrainian',
      name: 'language_screen_ukrainian',
      desc: '',
      args: [],
    );
  }

  /// `Choose an application theme!`
  String get theme_screen_title {
    return Intl.message(
      'Choose an application theme!',
      name: 'theme_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get theme_screen_light {
    return Intl.message(
      'Light',
      name: 'theme_screen_light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get theme_screen_dark {
    return Intl.message(
      'Dark',
      name: 'theme_screen_dark',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome_screen_title {
    return Intl.message(
      'Welcome!',
      name: 'welcome_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.`
  String get welcome_screen_description {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      name: 'welcome_screen_description',
      desc: '',
      args: [],
    );
  }

  /// `Functional overview`
  String get func_overview_screen_title {
    return Intl.message(
      'Functional overview',
      name: 'func_overview_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.`
  String get func_overview_screen_description {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      name: 'func_overview_screen_description',
      desc: '',
      args: [],
    );
  }

  /// `Functional 1`
  String get func_first_screen_title {
    return Intl.message(
      'Functional 1',
      name: 'func_first_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.`
  String get func_first_screen_description {
    return Intl.message(
      'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      name: 'func_first_screen_description',
      desc: '',
      args: [],
    );
  }

  /// `Functional 2`
  String get func_second_screen_title {
    return Intl.message(
      'Functional 2',
      name: 'func_second_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.`
  String get func_second_screen_description {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      name: 'func_second_screen_description',
      desc: '',
      args: [],
    );
  }

  /// `Functional 3`
  String get func_third_screen_title {
    return Intl.message(
      'Functional 3',
      name: 'func_third_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.`
  String get func_third_screen_description {
    return Intl.message(
      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
      name: 'func_third_screen_description',
      desc: '',
      args: [],
    );
  }

  /// `Project title`
  String get getstarted_screen_title {
    return Intl.message(
      'Project title',
      name: 'getstarted_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Get started!`
  String get getstarted_screen_btn_text {
    return Intl.message(
      'Get started!',
      name: 'getstarted_screen_btn_text',
      desc: '',
      args: [],
    );
  }

  /// `I have read and accept the `
  String get getstarted_screen_privacy_policy_text_p1 {
    return Intl.message(
      'I have read and accept the ',
      name: 'getstarted_screen_privacy_policy_text_p1',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get getstarted_screen_privacy_policy_text_p2 {
    return Intl.message(
      'Terms of Use',
      name: 'getstarted_screen_privacy_policy_text_p2',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get getstarted_screen_privacy_policy_text_p3 {
    return Intl.message(
      ' and ',
      name: 'getstarted_screen_privacy_policy_text_p3',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get getstarted_screen_privacy_policy_text_p4 {
    return Intl.message(
      'Privacy Policy',
      name: 'getstarted_screen_privacy_policy_text_p4',
      desc: '',
      args: [],
    );
  }

  /// ` before using the product.`
  String get getstarted_screen_privacy_policy_text_p5 {
    return Intl.message(
      ' before using the product.',
      name: 'getstarted_screen_privacy_policy_text_p5',
      desc: '',
      args: [],
    );
  }

  /// `Personal data processing policy`
  String get privacy_policy_title {
    return Intl.message(
      'Personal data processing policy',
      name: 'privacy_policy_title',
      desc: '',
      args: [],
    );
  }

  /// `1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.`
  String get privacy_policy_text {
    return Intl.message(
      '1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.',
      name: 'privacy_policy_text',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get terms_of_use_title {
    return Intl.message(
      'Terms of use',
      name: 'terms_of_use_title',
      desc: '',
      args: [],
    );
  }

  /// `1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator's policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.`
  String get terms_of_use_text {
    return Intl.message(
      '1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.\n1. General Provisions\nThis personal data processing policy has been drawn up in accordance with the requirements of the Federal Law of July 27, 2006. № 152-ФЗ "On personal data" (hereinafter referred to as the Law on Personal Data) and determines the procedure for processing personal data and measures to ensure the security of personal data taken by tangram (hereinafter referred to as the Operator).\n1.1. The operator sets as its most important goal and condition for the implementation of its activities the observance of human and civil rights and freedoms when processing their personal data, including the protection of the rights to privacy, personal and family secrets.\n1.2. This Operator\'s policy regarding the processing of personal data (hereinafter referred to as the Policy) applies to all information that the Operator can obtain about visitors to the website https: // flutter-onboarding.',
      name: 'terms_of_use_text',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
      Locale.fromSubtags(languageCode: 'uk', countryCode: 'UA'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
