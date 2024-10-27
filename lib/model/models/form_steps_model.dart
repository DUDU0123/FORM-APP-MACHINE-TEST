import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';

part 'form_steps_model.freezed.dart';

@freezed
class FormStepsModel with _$FormStepsModel {
  const factory FormStepsModel({
    required String title,
    required String label,
    required FormStatus status,
    required Widget formWidget,
  }) = _FormStepsModel;
}
