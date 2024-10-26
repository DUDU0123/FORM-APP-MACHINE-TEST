import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:form_app_machine_task/core/enums/enums.dart';

class FormStepsModel extends Equatable {
  final String title;
  final String label;
  final FormStatus status;
  final Widget formWidget;
  const FormStepsModel({
    required this.title,
    required this.label,
    required this.status,
    required this.formWidget,
  });

  @override
  List<Object> get props => [
        title,
        label,
        status,
        formWidget,
      ];
}
