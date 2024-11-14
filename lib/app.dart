import 'package:flutter/material.dart';

import 'package:task_app/features/tasks/presentation/ui/screens/main_screen.dart';

import 'shared/presentation/ui/foundations/theme/app_theme.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  AppTheme.getLightTheme(),
      darkTheme: AppTheme.getTheme(),
      home: const MainScreen(title: 'Tasky'),
    );
  }
}
