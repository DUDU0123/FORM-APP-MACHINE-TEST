import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/core/utils/message_show_helper.dart';
import 'package:form_app_machine_task/model/models/form_steps_model.dart';
import 'package:form_app_machine_task/view/form_home/widgets/campaign_form_widget.dart';

final campaignStepsProvider =
    StateNotifierProvider<CampaignStepsNotifier, CampaignStepsState>(
  (ref) {
    return CampaignStepsNotifier();
  },
);

class CampaignStepsState {
  final int currentStepIndex;
  final bool isForOncePerCustomer;
  final bool isCustomAudience;
  final List<FormStepsModel> formDataList;
  Widget currentWidget;

  CampaignStepsState({
    required this.currentStepIndex,
    required this.isForOncePerCustomer,
    required this.isCustomAudience,
    required this.formDataList,
    required this.currentWidget,
  });

  CampaignStepsState copyWith({
    int? currentStepIndex,
    Widget? currentWidget,
    bool? isForOncePerCustomer,
    bool? isCustomAudience,
  }) {
    return CampaignStepsState(
      isCustomAudience: isCustomAudience ?? this.isCustomAudience,
      isForOncePerCustomer: isForOncePerCustomer ?? this.isForOncePerCustomer,
      currentStepIndex: currentStepIndex ?? this.currentStepIndex,
      formDataList: formDataList,
      currentWidget: currentWidget ?? this.currentWidget,
    );
  }
}

class CampaignStepsNotifier extends StateNotifier<CampaignStepsState> {
  CampaignStepsNotifier()
      : super(CampaignStepsState(
          isCustomAudience: false,
          isForOncePerCustomer: true,
          currentWidget: const CampaignFormWidget(),
          currentStepIndex: 0,
          formDataList: formDataList,
        ));

  void updateCurrentWidget() {
    state = state.copyWith(
        currentWidget: formDataList[state.currentStepIndex].formWidget);
  }

  void goToNextStep() {
    if (state.currentStepIndex < state.formDataList.length - 1) {
      state = state.copyWith(
        currentStepIndex: state.currentStepIndex + 1,
        isCustomAudience: false,
        isForOncePerCustomer: false,
      );
      updateCurrentWidget();
    } else {
      MessageShowhelper.doneDialog();
      Future.delayed(
        const Duration(seconds: 2),
        () {
          state = state.copyWith(
            currentStepIndex: 0,
            isCustomAudience: false,
            isForOncePerCustomer: false,
          );
        },
      );
    }
  }

  updateIsCustomAudience() {
    state = state.copyWith(isCustomAudience: !state.isCustomAudience);
  }

  updateisForOncePerCustomer() {
    state = state.copyWith(isForOncePerCustomer: !state.isForOncePerCustomer);
  }
}
