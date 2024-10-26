import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/navigator_key.dart';
import 'package:lottie/lottie.dart';

class MessageShowhelper {
 static void showDialogBox({
    required String dialogTitle,
    required String dialogContent,
    required String actionButtonName,
    required void Function()? buttonActionMethod,
  }) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        title: TextWidgetCommon(
          text: dialogTitle,
          fontSize: 18,
        ),
        content: TextWidgetCommon(
          fontSize: 16,
          text: dialogContent,
        ),
        actions: [
          commonTextButton(
            buttonActionMethod: () {
              navigatorKey.currentState?.pop();
            },
            buttonText: 'Cancel',
          ),
          commonTextButton(
            buttonActionMethod: buttonActionMethod,
            buttonText: actionButtonName,
          ),
        ],
      ),
    );
  }
  static Future<dynamic> doneDialog() {
    return showDialog(
      barrierColor: kTransparent,
      barrierDismissible: false,
      context: navigatorKey.currentContext!,
      builder: (context) {
        Future.delayed(const Duration(seconds: 2), () {
          navigatorKey.currentState?.pop();
        });
        return SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: LottieBuilder.network(
              'https://lottie.host/d9ed79a7-d9e8-4e9e-b22a-7ef81b74b477/ezHWu3fZ6V.json',
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.done,
                  color: kGreen,
                );
              },
            ),
          ),
        );
      },
    );
  }

static void showSnackbar({
  required String snackBarContent,
}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!)..hideCurrentSnackBar()..showSnackBar(
    SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: kTransparent, // Makes the snackBar itself transparent
      duration: const Duration(seconds: 1),
      content: Center( // Center the container on the screen
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: kBlack,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 500, // Set a fixed width for the snackbar
          child: TextWidgetCommon(
            text: snackBarContent,
            textColor: kWhite,
            textAlign: TextAlign.center,
            fontSize: 18,
          ),
        ),
      ),
    ),
  );
}

}
Widget commonTextButton({
  required String buttonText,
  required void Function()? buttonActionMethod,
}) {
  return TextButton(
    onPressed: buttonActionMethod,
    child: TextWidgetCommon(
      fontSize: 18,
      text: buttonText,
    ),
  );
}