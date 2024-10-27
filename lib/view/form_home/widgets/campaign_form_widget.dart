import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/view/form_home/pages/form_home.dart';
import 'package:form_app_machine_task/view/form_home/utils/form_methods.dart';
import 'package:form_app_machine_task/view/form_home/widgets/bottom_static_text.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_divider.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_form_text_field.dart';
import 'package:form_app_machine_task/view/form_home/widgets/form_buttons.dart';
import 'package:form_app_machine_task/view/form_home/widgets/name_and_email_field_widgets.dart';
import 'package:form_app_machine_task/view/form_home/widgets/form_small_widgets.dart';

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
  void initState() {
    FormMethods.retrieveDraftedData(
      subjectController: subjectController,
      previewTextController: previewTextController,
      fromNameController: fromNameController,
      fromEmailController: fromEmailController,
    );
    super.initState();
  }

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
    bool isBreakPointReached = screenWidth(context: context) > breakPointTwo;
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
                  if (isBreakPointReached) ...campaignFormTitleAndSubTitle(),
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
                  NameAndEmailFieldWidgets(
                    fromEmailController: fromEmailController,
                    fromNameController: fromNameController,
                    isBreakPointReached: isBreakPointReached,
                  ),
                  kHeight25,
                  commonDivider(),
                  kHeight10,
                  ...switchListTileWidgets(),
                  kHeight20,
                  bottomStaticText(),
                  kHeight15,
                ],
              ),
            ),
          ),
          commonDivider(),
          kHeight15,
          FormButtons(
            subjectController: subjectController,
            previewTextController: previewTextController,
            fromNameController: fromNameController,
            fromEmailController: fromEmailController,
          ),
          kHeight20,
        ],
      ),
    );
  }
}
