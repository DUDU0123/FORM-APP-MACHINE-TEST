import 'package:flutter/material.dart';
import 'package:form_app_machine_task/model/models/form_steps_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_steps_state.freezed.dart';

@freezed
class CampaignStepsState with _$CampaignStepsState {
  const factory CampaignStepsState({
    required int currentStepIndex,
    required bool isForOncePerCustomer,
    required bool isCustomAudience,
    required List<FormStepsModel> formDataList,
    required Widget currentWidget,
  }) = _CampaignStepsState;
}
