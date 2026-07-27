import 'package:flutter/material.dart';

class Constants {
  static String getSystemCurrentLanguageCode() =>
      WidgetsBinding.instance.platformDispatcher.locale.languageCode;

  static String getSystemCurrentLocaleCode() => WidgetsBinding
      .instance
      .platformDispatcher
      .locale
      .toString()
      .replaceAll('-', '_');
}
