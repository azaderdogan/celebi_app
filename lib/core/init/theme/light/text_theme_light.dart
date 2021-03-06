import 'package:flutter/material.dart';

class TextThemeLight {
  static final TextThemeLight _instance = TextThemeLight._init();
  static TextThemeLight get instance => _instance;
  TextThemeLight._init();

  final TextStyle headline2 = TextStyle(color:Colors.black,fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5);
  final TextStyle headline1 = TextStyle(color:Colors.black,fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5);
  final TextStyle headline3 = TextStyle(color:Colors.black,fontSize: 48, fontWeight: FontWeight.w400);
  final TextStyle headline4 = TextStyle(color:Colors.black,fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25);
  final TextStyle headline5 = TextStyle(color:Colors.black,fontSize: 24, fontWeight: FontWeight.w400);
  final TextStyle overline = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5);
}