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
