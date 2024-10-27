import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/view/form_home/utils/form_methods.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_container_button_widget.dart';
import 'package:form_app_machine_task/view_model/providers/campaign_steps_provider.dart';

class FormButtons extends StatelessWidget {
  const FormButtons({
    super.key,
    required this.subjectController,
    required this.previewTextController,
    required this.fromNameController,
    required this.fromEmailController,
  });

  final TextEditingController subjectController;
  final TextEditingController previewTextController;
  final TextEditingController fromNameController;
  final TextEditingController fromEmailController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Consumer(
            builder: (context, ref, child) {
              return CommonContainerButtonWidget(
                onTap: () {
                  FormMethods.saveDraft(
                    subject: subjectController,
                    previewText: previewTextController,
                    fromName: fromNameController,
                    fromEmail: fromEmailController,
                    campaignSteps: ref.watch(campaignStepsProvider),
                  );
                },
                buttonText: "Save Draft",
                textColor: kOrange,
                borderColor: kOrange,
                buttonColor: kTransparent,
              );
            },
          ),
        ),
        kWidth15,
        Expanded(
          flex: 2,
          child: Consumer(
            builder: (context, ref, child) {
              final campaignSteps = ref.watch(campaignStepsProvider.notifier);
              return CommonContainerButtonWidget(
                onTap: () {
                  FormMethods.makeFormValidationAndGoToNext(
                    campaignSteps: campaignSteps,
                    subject: subjectController,
                    previewText: previewTextController,
                    fromName: fromNameController,
                    fromEmail: fromEmailController,
                  );
                },
                buttonText: ref.watch(campaignStepsProvider).currentStepIndex <
                        formDataList.length - 1
                    ? "Next Step"
                    : "Done",
                textColor: kWhite,
                buttonColor: kOrange,
              );
            },
          ),
        ),
      ],
    );
  }
}
