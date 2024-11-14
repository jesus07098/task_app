import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/core/di/injector.dart';

import 'package:task_app/features/tasks/presentation/ui/screens/main_screen.dart';

import 'features/tasks/presentation/blocs/tasks/task_bloc.dart';
import 'shared/presentation/ui/ui.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(injector())..add(OnGetTask()),
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.getTheme(),
        home: const MainScreen(),
      ),
    );
  }
}
