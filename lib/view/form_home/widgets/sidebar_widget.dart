import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';
import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/view/form_home/widgets/help_and_contact_part.dart';
import 'package:form_app_machine_task/view_model/providers/campaign_steps_provider.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({
    super.key,
    required this.isBreakPointReached,
  });
  final bool isBreakPointReached;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 15,
        top: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                // final campaignSteps = ref.watch(campaignStepsProvider.notifier);
                final campaignStateFn =
                    ref.watch(campaignStepsProvider.notifier);
                final campaignState = ref.watch(campaignStepsProvider);
                return ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: campaignState.currentStepIndex != index
                                ? kGrey
                                : kOrange,
                          ),
                          shape: BoxShape.circle,
                          color: campaignState.currentStepIndex == index
                              ? kOrange
                              : kWhite,
                        ),
                        child: Center(
                          child: TextWidgetCommon(
                            fontWeight: FontWeight.bold,
                            text: '${index + 1}',
                            fontSize: responsiveFontSize(
                              context: context,
                              baseSize: 18,
                            ),
                            textColor: campaignState.currentStepIndex == index
                                ? kWhite
                                : kGrey,
                          ),
                        ),
                      ),
                      title: TextWidgetCommon(
                        text: campaignState.formDataList[index].title,
                        fontWeight: FontWeight.bold,
                      ),
                      subtitle: TextWidgetCommon(
                        text: campaignState.formDataList[index].label,
                        fontSize: responsiveFontSize(
                          context: context,
                          baseSize: 12,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => kHeight10,
                  itemCount: campaignState.formDataList.length,
                );
              },
            ),
          ),
          helpAndContactPart()
        ],
      ),
    );
  }
}
