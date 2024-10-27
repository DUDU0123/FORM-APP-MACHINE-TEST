import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_switch_list_tile.dart';
import 'package:form_app_machine_task/view_model/providers/campaign_steps_provider.dart';

List<Widget> switchListTileWidgets() => [
      Consumer(
        builder: (context, ref, child) {
          return CommonSwitchListTile(
            title: "Run only once per customer",
            value: ref.watch(campaignStepsProvider).isForOncePerCustomer,
            onChanged: (value) {
              ref
                  .read(campaignStepsProvider.notifier)
                  .updateisForOncePerCustomer();
            },
          );
        },
      ),
      kHeight15,
      Consumer(
        builder: (context, ref, child) {
          return CommonSwitchListTile(
            title: "Custom audience",
            value: ref.watch(campaignStepsProvider).isCustomAudience,
            onChanged: (value) {
              ref.read(campaignStepsProvider.notifier).updateIsCustomAudience();
            },
          );
        },
      ),
    ];
List<Widget> campaignFormTitleAndSubTitle() => [
      kHeight30,
      Consumer(
        builder: (context, ref, child) {
          final index = ref.watch(campaignStepsProvider).currentStepIndex;
          return TextWidgetCommon(
            text: ref.watch(campaignStepsProvider).formDataList[index].title,
            fontSize: responsiveFontSize(context: context, baseSize: 26),
            fontWeight: FontWeight.bold,
          );
        },
      ),
      Consumer(
        builder: (context, ref, child) {
          final index = ref.watch(campaignStepsProvider).currentStepIndex;
          return TextWidgetCommon(
            text: ref.watch(campaignStepsProvider).formDataList[index].label,
            fontSize: responsiveFontSize(context: context, baseSize: 18),
            fontWeight: FontWeight.w400,
            textColor: kGrey,
          );
        },
      ),
    ];
