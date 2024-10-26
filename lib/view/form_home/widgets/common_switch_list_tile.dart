import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/components/text_widget_common.dart';
import 'package:form_app_machine_task/core/constants/colors.dart';

class CommonSwitchListTile extends StatelessWidget {
  const CommonSwitchListTile({
    super.key,
    required this.title,
    this.onChanged,
    required this.value,
  });
  final String title;
  final void Function(bool)? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      thumbColor: WidgetStateProperty.all(kWhite),
      activeTrackColor: kOrange,
      contentPadding: const EdgeInsets.all(0),
      title: TextWidgetCommon(
        text: title,
        fontWeight: FontWeight.bold,
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}