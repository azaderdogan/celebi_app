import 'package:celebi_app/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeLight extends AppTheme {
   static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();
  ThemeData get themeData => ThemeData.light();

}
