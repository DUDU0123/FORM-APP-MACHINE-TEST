import 'dart:math';

import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';

double responsiveFontSize({
  required BuildContext context,
  required double baseSize,
}) {
  // Screen width and height
  double screenwidth = screenWidth(context: context);
  double screenheight = screenHeight(context: context);

  // Calculate the diagonal size of the screen
  double screenDiagonal = sqrt(screenwidth * screenwidth + screenheight * screenheight);

  // Calculate the scale factor based on diagonal size for better responsiveness
  double scaleFactor = screenDiagonal / 1440; // 1440 is an arbitrary large screen diagonal

  // Clamp the scale factor between 0.8 and 1.4 to prevent extremes
  scaleFactor = scaleFactor.clamp(0.8, 1.4);

  // Return the adjusted font size
  return baseSize * scaleFactor;
}