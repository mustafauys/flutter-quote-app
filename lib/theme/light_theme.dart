import 'package:flutter/material.dart';
import 'package:flutterquote/widgets/color_constants.dart';
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
  Color get mainMenuItemBackgroundColor => ColorConstants.white;

  @override
  Color get mainMenuItemShadowColor => ColorConstants.transparentWhite;

  @override
  TextStyle get buttonGroupPrimaryTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorConstants.white,
            fontSize: 12.5,
            fontWeight: FontWeight.w700),
      );

  @override
  TextStyle get buttonGroupSecondaryTextStyle => buttonGroupPrimaryTextStyle
      .copyWith(color: ColorConstants.secondaryColor);

  @override
  TextStyle get alertDialogHeaderTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
          color: ColorConstants.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  TextStyle get appbarSubTitleTextStyle => GoogleFonts.roboto(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: ColorConstants.softGrey,
      );

  @override
  TextStyle get loginHeaderTextStyle => GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: ColorConstants.secondaryColor);

  @override
  TextStyle get miniButtonTextStyle => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: ColorConstants.white,
      );

  @override
  TextStyle get filterTitleTextStyle => GoogleFonts.roboto(
      color: ColorConstants.softGrey,
      fontSize: 14,
      fontWeight: FontWeight.normal);

  @override
  TextStyle get bottomSheetTitleTextStyle => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorConstants.steelGray,
      );

  @override
  TextStyle get largeButtonLightTextStyle => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorConstants.steelGray,
      );

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

  @override
  TextStyle get itemCardWidgetTitleTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorConstants.steelGray,
            fontSize: 13,
            fontWeight: FontWeight.w600),
      );

  @override
  TextStyle get largeButtonDarkTextStyle =>
      largeButtonLightTextStyle.copyWith(color: ColorConstants.white);

  @override
  TextStyle get bottomSheetModalTextStyle => GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorConstants.smoky,
            fontSize: 11,
            fontWeight: FontWeight.w600),
      );

  @override
  TextStyle get mainMenuItemTextStyle => GoogleFonts.roboto(
      textStyle: const TextStyle(
          height: 1.3,
          color: ColorConstants.westBay,
          fontSize: 13,
          fontWeight: FontWeight.w500));

  @override
  TextStyle get footerBodyText => GoogleFonts.roboto(
      textStyle: const TextStyle(
          height: 1.3,
          color: ColorConstants.white,
          fontSize: 13,
          fontWeight: FontWeight.w700));

  @override
  TextStyle get footerTitleText => GoogleFonts.roboto(
      textStyle: const TextStyle(
          height: 1.3,
          color: ColorConstants.westBay,
          fontSize: 13,
          fontWeight: FontWeight.w700));

  @override
  TextStyle get loginHeader1TextStyle => const TextStyle(
      fontFamily: 'ARLRDBD',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: ColorConstants.primaryColor);

  @override
  TextStyle get loginHeader2TextStyle =>
      loginHeader1TextStyle.copyWith(color: ColorConstants.secondaryColor);

  @override
  TextStyle get rememberMeTextStyle => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: ColorConstants.steelGray,
      );

  @override
  TextStyle get authenticationTextStyle => GoogleFonts.roboto(
      color: ColorConstants.secondaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w700);
}
