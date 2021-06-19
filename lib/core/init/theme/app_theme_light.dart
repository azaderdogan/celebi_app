import 'package:flutter/material.dart';

import '../../constants/app/application_constants.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';
import 'panache_theme/theme.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  @override
  ThemeData get themeData => ThemeData(
        fontFamily: ApplicationConstants.FONT_FAMILY,
        colorScheme: _appColorScheme,
        backgroundColor: Color(0xffE5E5E5),
        textTheme: textTheme(),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
            brightness: Brightness.light,
            color: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black87, size: 21)),
        inputDecorationTheme: InputDecorationTheme(
            focusColor: Colors.black12,
            labelStyle: TextStyle(),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            filled: true,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            // border: OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: OutlineInputBorder()),
        scaffoldBackgroundColor: Color(0xfff1f3f8),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: ColorScheme.light(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
      );

  TabBarTheme get tabBarTheme {
    return TabBarTheme(
      labelPadding: insets.lowPaddingAll,
      labelColor: _appColorScheme.onSecondary,
      labelStyle: textThemeLight!.headline5,
      unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
      // unselectedLabelStyle: textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
    );
  }

  TextTheme textTheme() {
    return ThemeData.light().textTheme.copyWith(
        headline1: textThemeLight!.headline1,
        headline2: textThemeLight!.headline2,
        headline3: textThemeLight!.headline3,
        headline4: textThemeLight!.headline4,
        headline5: textThemeLight!.headline5,
        
        overline: textThemeLight!.headline3);
  }

  ColorScheme get _appColorScheme {
    return ColorScheme(
        primary: Color(0xff7BC4B2),
        primaryVariant: Color(0xffB6E7DA), //xx
        secondary: Color(0xffF08A5D),
        secondaryVariant: Color(0xffE28989),
        surface: Colors.blue, //xx
        background: Color(0xffE5E5E5), //xx
        error: Color(0xffEB5757),
        onPrimary: Colors.greenAccent,
        onSecondary: Colors.black, //x
        onSurface: Colors.white30,
        onBackground: Color(0xffFAFAFA),
        onError: Color(0xffFF9555), //xx
        brightness: Brightness.light);
  }
}
