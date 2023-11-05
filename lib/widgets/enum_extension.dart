import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterquote/widgets/app_enum.dart';
import 'package:flutterquote/widgets/enum.dart';
import 'package:flutterquote/widgets/widgets_constants.dart';

extension AppPlatformExtension on AppPlatform {
  AppPlatform get appPlatform {
    if (Platform.isAndroid) {
      return AppPlatform.android;
    } else if (Platform.isIOS) {
      return AppPlatform.ios;
    } else {
      return AppPlatform.other;
    }
  }
}

extension ButtonSizeExtension on ButtonSize {
  Size getValue() {
    switch (this) {
      case ButtonSize.large:
        return const Size(
            WidgetConstants.buttonWidthHigh, WidgetConstants.buttonHeightHigh);
      case ButtonSize.medium:
        return const Size(WidgetConstants.buttonWidthMedium,
            WidgetConstants.buttonHeightMedium);
      case ButtonSize.small:
        return const Size(
            WidgetConstants.buttonWidthLow, WidgetConstants.buttonHeightLow);
    }
  }
}
