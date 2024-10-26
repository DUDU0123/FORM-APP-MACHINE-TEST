import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_field_widget_common.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';

class CommonFormTextField extends StatelessWidget {
  const CommonFormTextField({
    super.key,
    required this.controller,
    this.maxLines = 1,
    this.minLines = 1,
    this.hintText,
    required this.labelText,
    this.bottomText,
  });

  final TextEditingController controller;
  final int maxLines;
  final int minLines;
  final String? hintText;
  final String labelText;
  final String? bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: labelText,
          textColor: kBlack.withOpacity(0.6),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        kHeight5,
        TextFieldCommon(
          minLines: minLines,
          maxLines: maxLines,
          cursorColor: kOrange,
          textAlign: TextAlign.start,
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(
            color: kGrey.withOpacity(0.6),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: kGrey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kOrange),
          ),
        ),
        if (bottomText != null) ...[
          kHeight10,
          TextWidgetCommon(
            textAlign: TextAlign.start,
            text: bottomText!,
            fontSize: responsiveFontSize(context: context, baseSize: 14),
            fontWeight: FontWeight.w400,
            textColor: kGrey,
          )
        ]
      ],
    );
  }
}
