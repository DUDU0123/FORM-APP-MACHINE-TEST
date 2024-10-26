import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/navigator_key.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';

Widget bottomStaticText() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: "You can ",
      style: TextStyle(
        color: Colors.grey,
        fontSize: responsiveFontSize(
          context: navigatorKey.currentContext!,
          baseSize: 15,
        ),
      ),
      children: const [
        TextSpan(
          text: "set up a custom domain or connect your email service provider",
          style: TextStyle(
            color: kOrange,
          ),
        ),
        TextSpan(
          text: " to change this.",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}