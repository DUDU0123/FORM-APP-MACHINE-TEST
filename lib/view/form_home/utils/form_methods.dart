import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/keys.dart';
import 'package:form_app_machine_task/core/utils/message_show_helper.dart';
import 'package:form_app_machine_task/view_model/providers/campaign_steps_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormMethods {
  static final emailRegex = RegExp(r'^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$');

  static bool isEmptyFields({
    required String subject,
    required String previewText,
    required String fromName,
    required String fromEmail,
  }) {
    return subject.isEmpty &&
        previewText.isEmpty &&
        fromName.isEmpty &&
        fromEmail.isEmpty;
  }

  static void makeFormValidationAndGoToNext({
    required TextEditingController subject,
    required TextEditingController previewText,
    required TextEditingController fromName,
    required TextEditingController fromEmail,
    required CampaignStepsNotifier campaignSteps,
  }) {
    if (isEmptyFields(
      subject: subject.text,
      previewText: previewText.text,
      fromName: fromName.text,
      fromEmail: fromEmail.text,
    )) {
      MessageShowhelper.showSnackbar(
        snackBarContent: "Please fill all fields",
      );
    } else if (!emailRegex.hasMatch(fromEmail.text)) {
      MessageShowhelper.showSnackbar(
        snackBarContent: "Please enter valid email",
      );
    } else {
      subject.text = '';
      previewText.text = '';
      fromName.text = '';
      fromEmail.text = '';
      Map<String, dynamic> formData = {
        "subject": subject.text,
        "preview": previewText.text,
        "fromName": fromName.text,
        "fromEmail": fromEmail.text,
      };
      debugPrint(formData.toString());
      campaignSteps.goToNextStep();
    }
  }

  static Future<void> saveDraft({
    required TextEditingController subject,
    required TextEditingController previewText,
    required TextEditingController fromName,
    required TextEditingController fromEmail,
    required CampaignStepsState campaignSteps,
  }) async {
    if (isEmptyFields(
        subject: subject.text,
        previewText: previewText.text,
        fromName: fromName.text,
        fromEmail: fromEmail.text)) {
    } else {
      Map<String, dynamic> formData = {
        "subject": subject,
        "preview": previewText,
        "fromName": fromName,
        "fromEmail": fromEmail,
        "indexVal": campaignSteps.currentStepIndex
      };
      final prefs = await SharedPreferences.getInstance();
      final jsonString = jsonEncode(formData);
      await prefs.setString(formDataKey, jsonString);
      MessageShowhelper.showSnackbar(
          snackBarContent: "Form drafted successfully");
    }
  }

  static Future<String?> getDraft() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(formDataKey);
  }

  static Future<Map<String, dynamic>?> decodeSavedData() async {
    final String? encodedData = await getDraft();
    if (encodedData != null) {
      return jsonDecode(encodedData) as Map<String, dynamic>;
    }
    return null;
  }

  static void retrieveDraftedData({
    required TextEditingController subjectController,
    required TextEditingController previewTextController,
    required TextEditingController fromNameController,
    required TextEditingController fromEmailController,
  }) async {
    Map<String, dynamic>? draftData = await FormMethods.decodeSavedData();
    if (draftData != null) {
      subjectController.text = draftData["subject"];
      previewTextController.text = draftData["preview"];
      fromNameController.text = draftData["fromName"];
      fromEmailController.text = draftData["fromEmail"];
    }
  }
}
