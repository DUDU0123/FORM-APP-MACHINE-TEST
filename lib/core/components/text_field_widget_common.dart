import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
class TextFieldCommon extends StatelessWidget {
  const TextFieldCommon({
    super.key,
    this.border,
    this.suffixIcon,
    this.hintText,
    this.controller,
    required this.textAlign,
    this.enabled,
    this.keyboardType,
    this.style,
    this.prefix,
    this.fillColor,
    this.focusNode,
    this.maxLines = 1,
    this.cursorColor,
    this.minLines,
    this.onChanged,
    this.labelText,
    this.hintStyle,
    this.filled,
    this.labelStyle,this.focusedBorder,
  });
  final InputBorder? border;
  final TextStyle? style;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextAlign textAlign;
  final bool? enabled;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Color? fillColor;
  final FocusNode? focusNode;
  final int maxLines;
  final Color? cursorColor;
  final void Function(String)? onChanged;
  final int? minLines;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      maxLines: maxLines,
      minLines: minLines ?? 1,
      focusNode: focusNode,
      cursorColor: cursorColor ?? kBlack,
      style: style,
      keyboardType: keyboardType,
      controller: controller,
      enabled: enabled,
      textAlign: textAlign,
      decoration: InputDecoration(
        prefix: prefix,
        filled: filled,
        labelText: labelText,
        fillColor: fillColor ?? kTransparent,
        border: border,
        disabledBorder: border,
        enabledBorder: border,
        focusedBorder: focusedBorder?? border,
        suffixIcon: suffixIcon,
        hintText: hintText,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
      ),
    );
  }
}