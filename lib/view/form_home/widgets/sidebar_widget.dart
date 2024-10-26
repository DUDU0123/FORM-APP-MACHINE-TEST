import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/navigator_key.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';
import 'package:form_app_machine_task/core/utils/form_data_list.dart';
import 'package:form_app_machine_task/view/form_home/pages/form_home.dart';

import 'common_container_button_widget.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({
    super.key, required this.isBreakPointReached,
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
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (!isBreakPointReached) {
                      navigatorKey.currentState?.pop();
                    }
                    // currentWidget = formDataList[index].formWidget;
                  },
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kBlack,
                      ),
                      shape: BoxShape.circle,
                      color: kOrange,
                    ),
                    child: Center(
                      child: TextWidgetCommon(
                        fontWeight: FontWeight.bold,
                        text: '${index + 1}',
                        fontSize: responsiveFontSize(
                          context: context,
                          baseSize: 20,
                        ),
                        textColor: kWhite,
                      ),
                    ),
                  ),
                  title: TextWidgetCommon(
                    text: formDataList[index].title,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: TextWidgetCommon(
                    text: formDataList[index].label,
                    fontSize: responsiveFontSize(
                      context: context,
                      baseSize: 12,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => kHeight10,
              itemCount: formDataList.length,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidgetCommon(
                text: "Need Help?",
                fontWeight: FontWeight.w600,
              ),
              kHeight10,
              const TextWidgetCommon(
                text:
                    "Get to know how your campaign\ncan reach a wider audience",
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
          )
        ],
      ),
    );
  }
}
