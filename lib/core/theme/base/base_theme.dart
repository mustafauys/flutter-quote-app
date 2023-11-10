import 'package:flutter/material.dart';

abstract class BaseTheme {
  ThemeData get themeData;
  Color get primaryColor;
  Color get secondaryColor;
  Color get thirdColor;

  TextStyle get defaultThinTextStyle;
  TextStyle get formHeaderTextStyle;
  TextStyle get formErrorTextStyle;
  TextStyle get formInputValueTextStyle;
}
