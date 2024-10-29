import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/core/utils/message_show_helper.dart';
import 'package:form_app_machine_task/model/models/campaign_steps_state.dart';
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
        return CampaignStepsNotifier(decodedData: null);
      },
      error: (error, stack) {
        return CampaignStepsNotifier(decodedData: null);
      },
    );
  },
);

class CampaignStepsNotifier extends StateNotifier<CampaignStepsState> {
  CampaignStepsNotifier({
    required Map<String, dynamic>? decodedData,
  }) : super(CampaignStepsState(
          isCustomAudience: false,
          isForOncePerCustomer: true,
          currentWidget: const CampaignFormWidget(),
          currentStepIndex: decodedData?['indexVal'] ?? 0,
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
