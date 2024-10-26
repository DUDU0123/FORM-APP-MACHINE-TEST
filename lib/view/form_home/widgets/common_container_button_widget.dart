import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';

class CommonContainerButtonWidget extends StatelessWidget {
  const CommonContainerButtonWidget({
    super.key,
    this.width,
    this.height,
    required this.buttonText,
    this.buttonColor,
    this.borderColor,
    this.textColor, this.onTap,
  });
  final double? width;
  final double? height;
  final String buttonText;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? screenWidth(context: context),
        height: height ?? 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor ?? kOrange),
          color: buttonColor ?? kOrange,
        ),
        child: Center(
          child: TextWidgetCommon(
            text: buttonText,
            textColor: textColor ?? kWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


