import 'package:flutter/material.dart';
import 'package:form_app_machine_task/core/constants/keys.dart';
import 'package:form_app_machine_task/view/form_home/pages/form_home.dart';

class RootWidgetPage extends StatelessWidget {
  const RootWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const FormHome(),
    );
  }
}

