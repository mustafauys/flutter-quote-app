import 'package:flutter/material.dart';
import 'base/base_theme.dart';

class DarkTheme extends BaseTheme {
  static DarkTheme? _instance;

  static DarkTheme? get instance {
    if (_instance != null) return _instance;
    _instance = DarkTheme._init();
    return _instance;
  }

  DarkTheme._init();

  @override
  Color get primaryColor => throw UnimplementedError();

  @override
  Color get secondaryColor => throw UnimplementedError();

  @override
  ThemeData get themeData => throw UnimplementedError();

  @override
  Color get thirdColor => throw UnimplementedError();

  @override
  TextStyle get defaultThinTextStyle => throw UnimplementedError();

  @override
  TextStyle get formHeaderTextStyle => throw UnimplementedError();

  @override
  TextStyle get formErrorTextStyle => throw UnimplementedError();

  @override
  TextStyle get formInputValueTextStyle => throw UnimplementedError();
}
