import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/core/constants/responsive.dart';
import 'package:form_app_machine_task/view/form_home/widgets/bottom_static_text.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_container_button_widget.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_divider.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_form_text_field.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_switch_list_tile.dart';

class CampaignFormWidget extends StatefulWidget {
  const CampaignFormWidget({
    super.key,
  });

  @override
  State<CampaignFormWidget> createState() => _CampaignFormWidgetState();
}

class _CampaignFormWidgetState extends State<CampaignFormWidget> {
  TextEditingController subjectController = TextEditingController();
  TextEditingController previewTextController = TextEditingController();
  TextEditingController fromNameController = TextEditingController();
  TextEditingController fromEmailController = TextEditingController();
  @override
  void dispose() {
    subjectController.dispose();
    previewTextController.dispose();
    fromNameController.dispose();
    fromEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isBreakPointReached = screenWidth(context: context) > 1420;
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (isBreakPointReached) ...[
                    kHeight30,
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
                  kHeight30,
                  CommonFormTextField(
                    controller: subjectController,
                    labelText: "Campaign Subject",
                    hintText: "Enter Subject",
                  ),
                  kHeight25,
                  CommonFormTextField(
                    minLines: 5,
                    controller: previewTextController,
                    labelText: "Preview text",
                    hintText: "Enter text here...",
                    maxLines: 10,
                    bottomText: "Keep this simple of 50 character",
                  ),
                  kHeight25,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: CommonFormTextField(
                          controller: fromNameController,
                          labelText: '"From" Name',
                          hintText: "From Anne",
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: CommonFormTextField(
                          controller: fromEmailController,
                          labelText: '"From" Email',
                          hintText: "Anne@example.com",
                        ),
                      ),
                    ],
                  ),
                  kHeight25,
                  commonDivider(),
                  kHeight10,
                  CommonSwitchListTile(
                    title: "Run only once per customer",
                    value: true,
                    onChanged: (value) {},
                  ),
                  kHeight15,
                  CommonSwitchListTile(
                    title: "Custom audience",
                    value: false,
                    onChanged: (value) {},
                  ),
                  kHeight20,
                  bottomStaticText(),
                  kHeight15,
                ],
              ),
            ),
          ),
          commonDivider(),
          kHeight15,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: CommonContainerButtonWidget(
                  onTap: () {},
                  buttonText: "Save Draft",
                  textColor: kOrange,
                  borderColor: kOrange,
                  buttonColor: kTransparent,
                ),
              ),
              kWidth15,
              Expanded(
                flex: 2,
                child: CommonContainerButtonWidget(
                  onTap: () {},
                  buttonText: "Next Step",
                  textColor: kWhite,
                  buttonColor: kOrange,
                ),
              ),
            ],
          ),
          kHeight20,
        ],
      ),
    );
  }
}
