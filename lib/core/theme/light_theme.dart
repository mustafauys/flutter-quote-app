import 'package:flutter/material.dart';
import 'package:flutterquote/core/constants/color_constants.dart';
import 'base/base_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends BaseTheme {
  static LightTheme? _instance;

  static LightTheme? get instance {
    if (_instance != null) return _instance;
    _instance = LightTheme._init();
    return _instance;
  }

  LightTheme._init();

  @override
  ThemeData get themeData => ThemeData.light().copyWith(
        colorScheme: ThemeData.light()
            .colorScheme
            .copyWith(primary: primaryColor, secondary: secondaryColor),
      );

  @override
  Color get primaryColor => ColorConstants.primaryColor;

  @override
  Color get secondaryColor => ColorConstants.secondaryColor;

  @override
  Color get thirdColor => ColorConstants.tahitiGold;

  @override
  TextStyle get defaultThinTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: ColorConstants.steelGray,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      );

  @override
  TextStyle get formHeaderTextStyle => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: ColorConstants.steelGray,
      );

  @override
  TextStyle get formErrorTextStyle => GoogleFonts.roboto(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: ColorConstants.tahitiGold,
      );

  @override
  TextStyle get formInputValueTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorConstants.steelGray,
            fontSize: 13,
            fontWeight: FontWeight.w600),
      );
}
