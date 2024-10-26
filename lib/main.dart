import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app_machine_task/root_widget_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const RootWidgetPage()));
}

