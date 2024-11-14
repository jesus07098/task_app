import 'package:flutter/material.dart';
import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';

import '../../../data/datasources/tasks_datasource_impl.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         TasksDatasourceImpl().createTask(TaskDto(title: 'afasf', isCompleted: true));
        },
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
