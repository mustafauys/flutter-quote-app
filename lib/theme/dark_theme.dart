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
  TextStyle get buttonGroupPrimaryTextStyle => throw UnimplementedError();

  @override
  TextStyle get buttonGroupSecondaryTextStyle => throw UnimplementedError();

  @override
  TextStyle get alertDialogHeaderTextStyle => throw UnimplementedError();

  @override
  TextStyle get appbarSubTitleTextStyle => throw UnimplementedError();

  @override
  TextStyle get filterTitleTextStyle => throw UnimplementedError();

  @override
  TextStyle get miniButtonTextStyle => throw UnimplementedError();

  @override
  TextStyle get bottomSheetTitleTextStyle => throw UnimplementedError();

  @override
  TextStyle get largeButtonDarkTextStyle => throw UnimplementedError();

  @override
  TextStyle get largeButtonLightTextStyle => throw UnimplementedError();

  @override
  TextStyle get bottomSheetModalTextStyle => throw UnimplementedError();

  @override
  TextStyle get defaultThinTextStyle => throw UnimplementedError();

  @override
  TextStyle get formHeaderTextStyle => throw UnimplementedError();

  @override
  TextStyle get formErrorTextStyle => throw UnimplementedError();

  @override
  Color get mainMenuItemBackgroundColor => throw UnimplementedError();

  @override
  Color get mainMenuItemShadowColor => throw UnimplementedError();

  @override
  TextStyle get mainMenuItemTextStyle => throw UnimplementedError();

  @override
  TextStyle get footerBodyText => throw UnimplementedError();

  @override
  TextStyle get footerTitleText => throw UnimplementedError();

  @override
  TextStyle get loginHeaderTextStyle => throw UnimplementedError();
  
  @override
  TextStyle get formInputValueTextStyle => throw UnimplementedError();
  
  @override
  TextStyle get itemCardWidgetTitleTextStyle => throw UnimplementedError();

  @override
  TextStyle get loginHeader1TextStyle => throw UnimplementedError();

  @override
  TextStyle get loginHeader2TextStyle => throw UnimplementedError();

  @override
  TextStyle get rememberMeTextStyle => throw UnimplementedError();
  
  @override
  TextStyle get authenticationTextStyle => throw UnimplementedError();
}
