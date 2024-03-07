import 'dart:ui';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'lang/en_us.dart';

class LocalizationService extends Translations {
  // Default locale
  static const Locale locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble

  // Supported languages
  // Needs to be same order with locales
  static final List<String> langs = <String>[
    'English',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final List<Locale> locales = <Locale>[
    const Locale('en', 'US'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
    'en_US': enUS, // lang/en_us.dart
  };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final Locale? locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}