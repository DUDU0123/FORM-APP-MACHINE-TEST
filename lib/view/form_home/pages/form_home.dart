import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';
import 'package:form_app_machine_task/view/form_home/widgets/campaign_form_widget.dart';
import 'package:form_app_machine_task/view/form_home/widgets/sidebar_widget.dart';

Widget currentWidget = Container(
  color: kAmber,
);

class FormHome extends StatelessWidget {
  const FormHome({super.key});

  @override
  Widget build(BuildContext context) {
    bool isBreakPointReached = screenWidth(context: context) > 1420;
    return Scaffold(
      drawer: Drawer(
        child: SideBarWidget(
          isBreakPointReached: isBreakPointReached,
        ),
      ),
      appBar: !isBreakPointReached
          ? AppBar(
              toolbarHeight: 100,
              centerTitle: true,
              title: Column(
                children: [
                  TextWidgetCommon(
                    text: "Create New Email Campaign",
                    fontSize:
                        responsiveFontSize(context: context, baseSize: 26),
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidgetCommon(
                    text: "Fill out these details to build your broadcast",
                    fontSize:
                        responsiveFontSize(context: context, baseSize: 18),
                    fontWeight: FontWeight.w400,
                    textColor: kGrey,
                  ),
                ],
              ),
              elevation: 0,
              surfaceTintColor: kWhite,
              backgroundColor: kWhite,
            )
          : null,
      backgroundColor: kGrey.withOpacity(0.1),
      body: Padding(
        padding: !isBreakPointReached
            ? const EdgeInsets.all(0)
            : const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight(context: context),
              width: !isBreakPointReached
                  ? screenWidth(context: context)
                  : screenWidth(context: context) * 0.70,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(isBreakPointReached ? 10 : 0),
                color: kWhite,
              ),
              child: const CampaignFormWidget(),
              // child: currentWidget,
            ),
            if (isBreakPointReached) ...[
              kWidth25,
              Expanded(
                child: SideBarWidget(
                  isBreakPointReached: isBreakPointReached,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
