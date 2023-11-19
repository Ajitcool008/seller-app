import 'package:flutter/material.dart';

/// Define script codes supports
const List<String> scriptCodes = ['Hans', 'Hant'];

/// Language string to locate
///
/// Ex:
///
/// en => Locale.fromSubtags(languageCode: 'en')
///
/// zh_Hant_HK => Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant',countryCode: 'HK')
///
Locale stringToLocale(String locale) {
  List<String> locales = locale.split('_');
  if (locales.length == 1) {
    return Locale.fromSubtags(languageCode: locales[0]);
  }
  if (locales.length == 2) {
    if (scriptCodes.contains(locales[1])) {
      return Locale.fromSubtags(languageCode: locales[0], scriptCode: locales[1]);
    }
    return Locale.fromSubtags(languageCode: locales[0], countryCode: locales[1]);
  }
  return Locale.fromSubtags(languageCode: locales[0], scriptCode: locales[1], countryCode: locales[2]);
}

/// Convert Locate to language string
///
/// Ex:
///
/// Locale.fromSubtags(languageCode: 'en') => en
///
/// Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant',countryCode: 'HK') => zh_Hant_HK
String localeToString(Locale locale) {
  List<String> languages = [locale.languageCode];

  if (locale.scriptCode != null) {
    languages.add(locale.scriptCode!);
  }

  if (locale.countryCode != null) {
    languages.add(locale.countryCode!);
  }

  return languages.join('_');
}
