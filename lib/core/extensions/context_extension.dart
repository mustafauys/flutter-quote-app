import 'package:flutter/material.dart';
import 'package:flutterquote/core/enums/app_enum.dart';
import '../theme/base/base_theme.dart';
import '../theme/viewmodel/theme_viewmodel.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => deviceHeight * value;
  double dynamicWidth(double value) => deviceWidth * value;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;

  BaseTheme appTheme() => ThemeViewModel.theme!;
  DeviceType get deviceType {
    final double shortestSide = MediaQuery.of(this).size.shortestSide;

    if (shortestSide < 600) {
      return DeviceType.phone;
    } else {
      return DeviceType.tablet;
    }
  }

  Orientation get deviceOrientation => MediaQuery.of(this).orientation;
  bool get isPhone => deviceType == DeviceType.phone ? true : false;
  bool get isTablet => deviceType == DeviceType.tablet ? true : false;
  bool get isPortrait =>
      deviceOrientation == Orientation.portrait ? true : false;

  double get appBarPercent => kToolbarHeight / deviceHeight;
  double get topPaddingPercent =>
      MediaQuery.of(this).padding.top / deviceHeight;
  double get bottomPaddingPercent =>
      MediaQuery.of(this).padding.bottom / deviceHeight;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;
  EdgeInsets get safeArea => MediaQuery.of(this).padding;
  double get topPadding => safeArea.top;
  double get safeAreaHeightTop => MediaQuery.of(this).viewInsets.top;
  double get safeAreaHeightBottom => MediaQuery.of(this).viewInsets.bottom;
  double get screenHeight => deviceHeight;
  double get safeAreaHeight => MediaQuery.of(this).viewInsets.bottom;
  double get appBarHeight => kToolbarHeight;
  double get screenHeightMinusSafeAreaAndAppBar =>
      screenHeight - safeAreaHeight - appBarHeight;
  double get usableScreenHeight =>
      screenHeight -
      safeAreaHeightTop -
      safeAreaHeightBottom -
      appBarHeight -
      topPadding;
}
