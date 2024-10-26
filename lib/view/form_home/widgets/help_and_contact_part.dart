  import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_container_button_widget.dart';

Widget helpAndContactPart() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetCommon(
          text: "Need Help?",
          fontWeight: FontWeight.w600,
        ),
        kHeight10,
        TextWidgetCommon(
          text: "Get to know how your campaign\ncan reach a wider audience",
          textColor: kGrey,
        ),
        kHeight10,
        CommonContainerButtonWidget(
          buttonText: "Contact Us",
          height: 40,
          width: 100,
          buttonColor: kWhite,
          borderColor: kGrey,
          textColor: kGrey,
        )
      ],
    );
  }