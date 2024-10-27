import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/height_width.dart';
import 'package:form_app_machine_task/view/form_home/widgets/common_form_text_field.dart';

class NameAndEmailFieldWidgets extends StatelessWidget {
  const NameAndEmailFieldWidgets({super.key, required this.fromNameController, required this.fromEmailController, required this.isBreakPointReached});
  final TextEditingController fromNameController;
  final TextEditingController fromEmailController;
  final bool isBreakPointReached;
  @override
  Widget build(BuildContext context) {
    if (isBreakPointReached) {
      return Row(
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
      );
    } else {
      return Column(
        children: [
          CommonFormTextField(
            controller: fromNameController,
            labelText: '"From" Name',
            hintText: "From Anne",
          ),
          kHeight20,
          CommonFormTextField(
            controller: fromEmailController,
            labelText: '"From" Email',
            hintText: "Anne@example.com",
          )
        ],
      );
    }
  }
}