import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterquote/core/constants/color_constants.dart';
import 'package:flutterquote/core/extensions/context_extension.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.context,
    this.customTextFieldKey,
    this.headerText = '',
    this.isOutlined = false,
    this.borderColor = ColorConstants.steelGray,
    this.showBorder = true,
    this.headerTextStyle,
    this.prefixIcon,
    this.inputFormatters,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.validator,
    this.onSaved,
    this.textAlign,
    this.suffixIcon,
    this.autoValidateMode,
    this.obscureText,
    this.errorTextStyle,
    this.topPadding,
    this.enabled = true,
    this.focusNode,
    this.textStyle,
    this.initialValue,
    this.height,
    this.isDense,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.expands,
    this.onTap,
    this.readOnly,
    this.textInputAction,
    this.whenDispose,
  }) : super(key: key);

  final Key? customTextFieldKey;
  final double? height;
  final bool showBorder;
  final BuildContext context;
  final String headerText;
  final TextStyle? headerTextStyle;
  final bool? isOutlined;
  final Color? borderColor;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final TextStyle? errorTextStyle;
  final double? topPadding;
  final bool enabled;
  final FocusNode? focusNode;
  final TextStyle? textStyle;
  final String? initialValue;
  final bool? isDense;
  final VoidCallback? onEditingComplete;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool? expands;
  final bool? readOnly;
  final TextInputAction? textInputAction;
  final VoidCallback? whenDispose;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (widget.whenDispose != null) {
        widget.whenDispose!();
      }
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: widget.topPadding ?? 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              widget.headerText,
              style: widget.headerTextStyle ??
                  context.appTheme().formHeaderTextStyle,
            ),
          ),
          SizedBox(
            height: widget.height,
            child: TextFormField(
              key: widget.customTextFieldKey,
              expands: widget.expands ?? false,
              maxLines: widget.maxLines ?? 1,
              minLines: widget.minLines,
              maxLength: widget.maxLength,
              focusNode: widget.focusNode,
              initialValue: widget.initialValue,
              enabled: widget.enabled,
              validator: widget.validator,
              readOnly: widget.readOnly ?? false,
              textInputAction: widget.textInputAction,
              style: widget.enabled
                  ? (widget.textStyle ??
                      context.appTheme().formInputValueTextStyle)
                  : (widget.textStyle ??
                          context.appTheme().formInputValueTextStyle)
                      .copyWith(
                          color: ColorConstants.softGrey.withOpacity(0.7)),
              textAlign: widget.textAlign ?? TextAlign.start,
              controller: widget.controller,
              inputFormatters: widget.inputFormatters,
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText ?? false,
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                  isDense: widget.isDense ?? true,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    top: 12.0,
                    bottom: 12.0,
                    right: 10,
                  ),
                  disabledBorder: widget.showBorder
                      ? OutlineInputBorder(
                          borderSide: BorderSide(
                              color: widget.borderColor!.withOpacity(0.3),
                              width: 1))
                      : const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.steelGray, width: 1)),
                  hintText: widget.hintText,
                  hintStyle: context.appTheme().defaultThinTextStyle,
                  errorStyle: widget.errorTextStyle ??
                      context.appTheme().formErrorTextStyle,
                  prefixIcon: widget.prefixIcon,
                  suffixIcon: widget.suffixIcon,
                  enabledBorder: widget.showBorder
                      ? OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.smoky.withOpacity(1),
                              width: 1))
                      : OutlineInputBorder(
                          borderSide:
                              BorderSide(color: widget.borderColor!, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                  focusColor: ColorConstants.steelGray,
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstants.haveLockBlue)),
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: ((widget.isOutlined ?? false) &&
                          widget.borderColor == null)
                      ? ColorConstants.steelGray
                      : (widget.isOutlined ?? false) &&
                              widget.borderColor != null
                          ? widget.borderColor
                          : ColorConstants.white),
              onSaved: widget.onSaved,
              onEditingComplete: widget.onEditingComplete,
              onChanged: widget.onChanged,
              onFieldSubmitted: widget.onFieldSubmitted,
              onTap: widget.onTap,
            ),
          ),
        ],
      ),
    );
  }
}
