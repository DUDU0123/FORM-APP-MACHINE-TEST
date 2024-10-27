import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/core/utils/message_show_helper.dart';
import 'package:form_app_machine_task/model/models/form_steps_model.dart';
import 'package:form_app_machine_task/view/form_home/utils/form_methods.dart';
import 'package:form_app_machine_task/view/form_home/widgets/campaign_form_widget.dart';

final draftDataProvider = FutureProvider<Map<String, dynamic>?>((ref) async {
  return await FormMethods.decodeSavedData();
});
final campaignStepsProvider =
    StateNotifierProvider<CampaignStepsNotifier, CampaignStepsState>(
  (ref) {
    final draftDataAsyncValue = ref.watch(draftDataProvider);
    return draftDataAsyncValue.when(
      data: (decodedData) {
        return CampaignStepsNotifier(decodedData: decodedData);
      },
      loading: () {
        // Handle loading state if necessary, e.g., returning an empty notifier
        return CampaignStepsNotifier(decodedData: null);
      },
      error: (error, stack) {
        // Handle the error state
        return CampaignStepsNotifier(decodedData: null);
      },
    );
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
  CampaignStepsNotifier({
    required Map<String, dynamic>? decodedData,
  }) : super(CampaignStepsState(
          isCustomAudience: false,
          isForOncePerCustomer: true,
          currentWidget: const CampaignFormWidget(),
          currentStepIndex: 0,
          formDataList: formDataList,
        )) {
    _initialize();
  }

  Future<void> _initialize() async {
    final decodedData = await FormMethods.decodeSavedData();
    if (decodedData != null) {
      int decodedIndex = decodedData['indexVal'] ??
          0; // Adjust this according to your data structure
      state = state.copyWith(
        currentStepIndex: decodedIndex,
        // You can set other relevant fields from decodedData if necessary
      );
    }
  }

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
