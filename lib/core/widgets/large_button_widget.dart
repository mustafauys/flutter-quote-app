import 'package:flutter/material.dart';
import 'package:flutterquote/core/constants/color_constants.dart';
import 'package:flutterquote/core/enums/enum.dart';
import 'package:flutterquote/core/enums/enum_extension.dart';

class LargeButton extends StatelessWidget {
  final Key? buttonKey;
  final String text;
  final TextStyle? style;
  final Color? backgroundColor;
  final double radius;
  final bool isOutlined;
  final VoidCallback? onPressed;
  final double borderWidth;
  final Color? borderColor;
  final bool wrapText;
  final double elevation;
  final ButtonSize? buttonSize;

  const LargeButton({
    Key? key,
    required this.text,
    this.style,
    this.buttonKey,
    this.backgroundColor,
    this.radius = 8,
    this.isOutlined = false,
    this.onPressed,
    this.borderWidth = 0.8,
    this.borderColor,
    this.wrapText = false,
    this.elevation = 0,
    this.buttonSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonSize?.getValue().width,
      height: buttonSize?.getValue().height,
      child: buttonBody(),
    );
  }

  Material buttonBody() {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(radius),
      color: ColorConstants.transparent,
      child: OutlinedButton(
        key: buttonKey,
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorConstants.secondaryColor,
          side: elevation > 0
              ? null
              : BorderSide(
                  width: onPressed == null ? 0 : borderWidth,
                  color: (!isOutlined && borderColor == null
                      ? ColorConstants.white
                      : !isOutlined && borderColor != null
                          ? borderColor
                          : ColorConstants.secondaryColor)!),
          backgroundColor: !isOutlined
              ? (onPressed == null ? ColorConstants.softGrey : backgroundColor)
              : ColorConstants.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          text,
          softWrap: wrapText,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );
  }
}
