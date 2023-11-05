import 'package:flutter/material.dart';

abstract class BaseTheme {
  ThemeData get themeData;
  Color get primaryColor;
  Color get secondaryColor;
  Color get thirdColor;
  TextStyle get buttonGroupPrimaryTextStyle;
  TextStyle get buttonGroupSecondaryTextStyle;
  TextStyle get alertDialogHeaderTextStyle;
  TextStyle get appbarSubTitleTextStyle;
  TextStyle get miniButtonTextStyle;
  TextStyle get filterTitleTextStyle;
  TextStyle get bottomSheetTitleTextStyle;
  TextStyle get bottomSheetModalTextStyle;
  TextStyle get largeButtonLightTextStyle;
  TextStyle get largeButtonDarkTextStyle;
  TextStyle get defaultThinTextStyle;
  TextStyle get formHeaderTextStyle;
  TextStyle get formErrorTextStyle;
  TextStyle get itemCardWidgetTitleTextStyle;
  TextStyle get formInputValueTextStyle;
  TextStyle get mainMenuItemTextStyle;
  TextStyle get loginHeaderTextStyle;
  Color get mainMenuItemBackgroundColor;
  Color get mainMenuItemShadowColor;
  TextStyle get footerTitleText;
  TextStyle get footerBodyText;
  TextStyle get loginHeader1TextStyle;
  TextStyle get loginHeader2TextStyle;
  TextStyle get rememberMeTextStyle;
  TextStyle get authenticationTextStyle;
}
