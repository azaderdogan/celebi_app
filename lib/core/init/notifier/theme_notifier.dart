import 'package:celebi_app/core/constants/enums/app_theme_enum.dart';
import 'package:celebi_app/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.themeData;
  ThemeData get currentTheme => _currentTheme;

  void changeTheme(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
